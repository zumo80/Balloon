// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// シーン処理の説明[scene_two.cpp]
// Author : Koki Nishiyama
//
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// インクルードファイル
//
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene_two.h"
#include "manager.h"

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 静的変数宣言
//
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// イニシャライザコンストラクタ
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene_TWO::CScene_TWO() : CScene::CScene()
{
	// 変数の初期化
	m_pTexture = NULL;
	m_pVtxBuff = NULL;
	m_pos = D3DVECTOR3_ZERO;
	m_size = D3DVECTOR2_ZERO;
	m_col = D3DXCOLOR_INI;
	m_rot = 0;
	m_fLengh = 0;
	m_fAngle = 0;
	m_offsetType = OFFSET_TYPE_CENTER;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// デストラクタ処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene_TWO::~CScene_TWO()
{
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 初期化処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Init(void)
{
	// 変数宣言
	VERTEX_2D *pVtx;				// 頂点情報
	LPDIRECT3DDEVICE9 pDevice =		// デバイスの取得
		CManager::GetRenderer()->GetDevice();

	// 頂点バッファの生成
	pDevice->CreateVertexBuffer(
		sizeof(VERTEX_2D) * 4,
		D3DUSAGE_WRITEONLY,
		FVF_VERTEX_2D,
		D3DPOOL_MANAGED,
		&m_pVtxBuff,
		NULL);

	// 頂点データの範囲をロックし、頂点バッファへのポインタ
	m_pVtxBuff->Lock(
		0,
		0,
		(void **)&pVtx,
		0);
	// 頂点座標を設定
	Set_Vtx_Pos(m_offsetType,pVtx);
	// 頂点の大きさ
	pVtx[0].rhw = 1.0f;
	pVtx[1].rhw = 1.0f;
	pVtx[2].rhw = 1.0f;
	pVtx[3].rhw = 1.0f;
	// 頂点カラー
	Set_Vtx_Col(pVtx);
	// 頂点テクスチャー
	pVtx[0].tex = D3DXVECTOR2(0.0f, 0.0f);
	pVtx[1].tex = D3DXVECTOR2(1.0f, 0.0f);
	pVtx[2].tex = D3DXVECTOR2(0.0f, 1.0f);
	pVtx[3].tex = D3DXVECTOR2(1.0f, 1.0f);
	// アンロック
	m_pVtxBuff->Unlock();
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 終了処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Uninit(void)
{
	// 頂点バッファの開放
	if (m_pVtxBuff != NULL)
	{
 		m_pVtxBuff->Release();
		m_pVtxBuff = NULL;
	}
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 更新処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Update(void)
{
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 描画処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Draw(void)
{
	// 変数宣言
	LPDIRECT3DDEVICE9 pDevice =		// デバイスの取得
		CManager::GetRenderer()->GetDevice();

	// 頂点バッファをデバイスのデータストリームにバインド
	pDevice->SetStreamSource(
		0,
		m_pVtxBuff,
		0,
		sizeof(VERTEX_2D));

	// 頂点フォーマットの設定
	pDevice->SetFVF(FVF_VERTEX_2D);
	// テクスチャの設定
	pDevice->SetTexture(0, m_pTexture);
	// ポリゴン描画
	pDevice->DrawPrimitive(
		D3DPT_TRIANGLESTRIP,
		0,
		2);
}

#ifdef _DEBUG
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// デバッグ表示
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Debug(void)
{
}
#endif // _DEBUG

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 作成(シーン継承あり)処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene_TWO * CScene_TWO::Create(
	OFFSET_TYPE	const & type,	// タイプ
	D3DXVECTOR3 const & pos,	// 位置
	D3DXVECTOR2 const & size,	// サイズ
	float		const & frot,	// 角度
	D3DXCOLOR	const & col		// 色
)
{
	// 変数宣言
	CScene_TWO * pScene_Two;		// シーン2Dクラス
	// メモリの生成(初め->基本クラス,後->派生クラス)
	pScene_Two = new CScene_TWO();
	// 設定
	// シーン管理設定
	pScene_Two->ManageSetting(CScene::LAYER_UI);
	pScene_Two->m_offsetType = type;	// タイプ
	pScene_Two->m_pos = pos;			// 位置
	pScene_Two->m_size = size;			// サイズ
	pScene_Two->m_rot = frot;			// 角度
	pScene_Two->m_col = col;			// カラー
	// 初期化処理
	pScene_Two->Init();
	// 生成したオブジェクトを返す
	return pScene_Two;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 作成(シーン継承なし)処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CScene_TWO * CScene_TWO::Create_Self(
	OFFSET_TYPE const & type, 
	D3DXVECTOR3 const & pos, 
	D3DXVECTOR2 const & size, 
	float const & frot, 
	D3DXCOLOR const & col
)
{
	// 変数宣言
	CScene_TWO * pScene_Two;		// シーン2Dクラス
									// メモリの生成(初め->基本クラス,後->派生クラス)
	pScene_Two = new CScene_TWO;
	// 設定
	pScene_Two->m_offsetType = type;	// タイプ
	pScene_Two->m_pos = pos;			// 位置
	pScene_Two->m_size = size;			// サイズ
	pScene_Two->m_rot = frot;			// 角度
	pScene_Two->m_col = col;			// カラー
	// 初期化処理
	pScene_Two->Init();
	// 生成したオブジェクトを返す
	return pScene_Two;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 作成(シーン継承なし、std::unique_ptr)処理
// ※戻り値はstd::moveで受け取る
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
std::unique_ptr<CScene_TWO> CScene_TWO::Creat_Unique(
	OFFSET_TYPE const & type,
	D3DXVECTOR3 const & pos,
	D3DXVECTOR2 const & size,
	float const & frot,
	D3DXCOLOR const & col
)
{
	// 変数宣言
	std::unique_ptr<CScene_TWO> pScene_Two(new CScene_TWO);		// シーン2Dクラス
	// 設定
	pScene_Two->m_offsetType = type;	// タイプ
	pScene_Two->m_pos = pos;			// 位置
	pScene_Two->m_size = size;			// サイズ
	pScene_Two->m_rot = frot;			// 角度
	pScene_Two->m_col = col;			// カラー
										// 初期化処理
	pScene_Two->Init();
	// 生成したオブジェクトを返す
	return pScene_Two;
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// オフセットセンター処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Offset_Center(VERTEX_2D * pVtx)
{
	// 三角関数を使い斜めの長さを求める
	m_fLengh = sqrtf((m_size.x * 0.5f) * (m_size.x * 0.5f) + (m_size.y * 0.5f) * (m_size.y * 0.5f));
	m_fAngle = atan2f((m_size.x), (m_size.y));

	// 頂点座標
	pVtx[0].pos = m_pos + D3DXVECTOR3(sinf(m_fAngle - D3DX_PI + m_rot) * m_fLengh, cosf(m_fAngle - D3DX_PI + m_rot) * m_fLengh, 0.0f);
	pVtx[1].pos = m_pos + D3DXVECTOR3(sinf(-m_fAngle + D3DX_PI + m_rot) * m_fLengh, cosf(-m_fAngle + D3DX_PI + m_rot) * m_fLengh, 0.0f);
	pVtx[2].pos = m_pos + D3DXVECTOR3(sinf(-m_fAngle + m_rot) * m_fLengh, cosf(-m_fAngle + m_rot) * m_fLengh, 0.0f);
	pVtx[3].pos = m_pos + D3DXVECTOR3(sinf(m_fAngle + m_rot) * m_fLengh, cosf(m_fAngle + m_rot) * m_fLengh, 0.0f);
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// オフセット左処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Offset_Left(VERTEX_2D * pVtx)
{
	// 三角関数を使い斜めの長さを求める
	m_fLengh = sqrtf((m_size.x) * (m_size.x) + (m_size.y * 0.5f) * (m_size.y * 0.5f));
	m_fAngle = atan2f((m_size.x), (m_size.y * 0.5f));

	// 頂点座標
	pVtx[0].pos = m_pos + D3DXVECTOR3(
		sinf(m_rot - D3DX_PI) * m_size.y * 0.5f,
		cosf(m_rot - D3DX_PI) * m_size.y * 0.5f, 0.0f);
	pVtx[1].pos = m_pos + D3DXVECTOR3(
		sinf(D3DX_PI - m_fAngle + m_rot) * m_fLengh,
		cosf(D3DX_PI - m_fAngle + m_rot) * m_fLengh, 0.0f);
	pVtx[2].pos = m_pos + D3DXVECTOR3(
		sinf(m_rot) * m_size.y * 0.5f,
		cosf(m_rot) * m_size.y * 0.5f, 0.0f);
	pVtx[3].pos = m_pos + D3DXVECTOR3(
		sinf(m_fAngle + m_rot) * m_fLengh,
		cosf(m_fAngle + m_rot) * m_fLengh, 0.0f);
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 頂点の設定処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Set_Vtx_Pos(
	OFFSET_TYPE const & offsettype,
	VERTEX_2D * pVtx
)
{
	// 頂点情報がヌルだったら
	if (pVtx == NULL)
	{
		// 頂点データの範囲をロックし、頂点バッファへのポインタ
		m_pVtxBuff->Lock(
			0,
			0,
			(void **)&pVtx,
			0);
	}
	switch (offsettype)
	{
		// センター
	case OFFSET_TYPE_CENTER:
		Offset_Center(pVtx);
		break;
		// 左
	case OFFSET_TYPE_LEFT:
		Offset_Left(pVtx);
		break;
	default:
		break;
	}	
	// 頂点情報がヌルだったら
	if (pVtx == NULL)
	{
		// アンロック
		m_pVtxBuff->Unlock();
	}
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 頂点カラーの設定処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::Set_Vtx_Col(VERTEX_2D * pVtx)
{
	// 頂点情報がヌルだったら
	if (pVtx == NULL)
	{
		// 頂点データの範囲をロックし、頂点バッファへのポインタ
		m_pVtxBuff->Lock(
			0,
			0,
			(void **)&pVtx,
			0);
	}
	// 頂点カラー
	pVtx[0].col = m_col;
	pVtx[1].col = m_col;
	pVtx[2].col = m_col;
	pVtx[3].col = m_col;
	// 頂点情報がヌルだったら
	if (pVtx == NULL)
	{
		// アンロック
		m_pVtxBuff->Unlock();
	}
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 表示テクスチャー設定処理
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::SetTex(
	D3DXVECTOR2 const &first,	// 初期の配置
	D3DXVECTOR2 const &last		// 最後の配置
)
{
	// 変数宣言
	VERTEX_2D *pVtx;	// 頂点情報

	// 頂点データの範囲をロックし、頂点バッファへのポインタ
	m_pVtxBuff->Lock(
		0,
		0,
		(void **)&pVtx,
		0);
	// 頂点テクスチャー
	pVtx[0].tex = D3DXVECTOR2(first.x, first.y);
	pVtx[1].tex = D3DXVECTOR2(last.x, first.y);
	pVtx[2].tex = D3DXVECTOR2(first.x, last.y);
	pVtx[3].tex = D3DXVECTOR2(last.x, last.y);
	// アンロック
	m_pVtxBuff->Unlock();
}

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// アニメーション生成
// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
void CScene_TWO::SetAnimation(float fTexX, float fTexY, float fTexY2, int nPatternAnim)
{
	// 変数宣言
	VERTEX_2D *pVtx;	// 頂点情報

	// 頂点データの範囲をロックし、頂点バッファへのポインタを取得
	m_pVtxBuff->Lock(0, 0, (void**)&pVtx, 0);

	// テクスチャ座標の設定
	pVtx[0].tex = D3DXVECTOR2(0.0f + nPatternAnim * fTexX, fTexY2);
	pVtx[1].tex = D3DXVECTOR2(fTexX + nPatternAnim * fTexX, fTexY2);
	pVtx[2].tex = D3DXVECTOR2(0.0f + nPatternAnim * fTexX, fTexY);
	pVtx[3].tex = D3DXVECTOR2(fTexX + nPatternAnim * fTexX, fTexY);

	// 頂点データをアンロックする
	m_pVtxBuff->Unlock();
}
