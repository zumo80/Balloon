// ==========================================================
//
// 雷[thunder.h]
// Author:Ryouma Inoue
//
// ==========================================================
#ifndef _THUNDER_H_
#define _THUNDER_H_

#include "main.h"
#include "scene_three.h"

// ==========================================================
// マクロ定義
// ==========================================================
#define	TEXTURE_THUNDER	"data/TEXTURE/coin.png"			// 読み込むテクスチャファイル名
#define	MAX_DISTANCE	(150)							// 距離
#define	MAX_DISTANCE_Y	(200)							// 距離
#define	ANIM_TEX		(1.0f / 6.0f)					// アニメーションテクスチャ

// ==========================================================
//
// 前方宣言
//
// ==========================================================
class CMeshdome;

// ==========================================================
//
// クラスの定義
//
// ==========================================================
class CThunder : public CScene_THREE
{
public:

	CThunder();												// コンストラクタ
	~CThunder();											// デストラクタ

	void Init(void);										// 初期化
	void Uninit(void);										// 終了
	void Update(void);										// 更新
	void Draw(void);										// 描画

	static CThunder *Create(D3DXVECTOR3 pos, D3DXVECTOR3 size);					// 生成
	static void Unload(void);													// アンロード

private:
	static LPDIRECT3DTEXTURE9 m_pTex;					// テクスチャ
	LPDIRECT3DVERTEXBUFFER9	m_pVtxBuff = NULL;			// 頂点バッファへのポインタ
	VERTEX_3D *m_pVtx;									// 頂点情報へのポインタ
	D3DXMATRIX m_mtxWorld;								// ワールドマトリックス

	static CThunder *m_pThunder;

	CMeshdome *m_pMeshDome;								// メッシュドームへのポインタ

	D3DXVECTOR3	m_vtxMin;								// 最小値
	D3DXVECTOR3	m_vtxMax;								// 最大値
	D3DXVECTOR3 m_pos;									// 位置
	D3DXVECTOR3 m_posOld;								// 前回の位置
	D3DXVECTOR3 m_rot;									// 回転
	D3DXVECTOR3 m_move;									// 移動量
	D3DXCOLOR m_col;									// 色

	int	m_nCounterAnim;									// アニメーションカウンター
	int m_nPatternAnim;									// アニメーションパターン
	int m_nCntThunder;									// 雷のカウント
	int m_nCntDraw;										// 雷の描画カウント
	float m_fDistance;									// 距離
	bool m_bThunder;									// 雷の状態
};
#endif