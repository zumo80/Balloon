// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 3Dパーティクルの処理[3Dparticle.h]
// Author : Nishiyama Koki
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _3DPARTICLE_H_
#define _3DPARTICLE_H_

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// インクルードファイル
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene.h"

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// マクロ定義
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// クラス定義
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class C3DParticle :public CScene
{
public:
	/* 列挙型 */
	// エフェクトタイプ
	typedef enum
	{
		TYPE_NORMAL = 0,
		TYPE_CHARGE,
		TYPE_MAX,
	} TYPE;
	// パーティクル番号
	typedef enum
	{
		PARTICLE_ID_NONE = -1,
		PARTICLE_ID_FIRE,				// 炎
		PARTICLE_ID_TRICK_BEFORE_SHOCK,	// 秘奥義前の波動
		PARTICLE_ID_TRICK1_FIRE,		// 技�@のエフェクト
		PARTICLE_ID_SHOCK_SMOKE,		// 吹っ飛びけむり
		PARTICLE_ID_ARROW_SMOKE,		// 弓けむり
		PARTICLE_ID_SHOCKWAVE,			// 衝撃波
		PARTICLE_ID_GET,				// アイテムゲット
		PARTICLE_ID_CROSSLINE,			// クロスライン
		PARTICLE_ID_WEAVELINE,			// 編み物ライン
		PARTICLE_ID_RANDAMLINE,			// ランダムライン
		PARTICLE_ID_CENTERRANDAMLINE,	// 中心ランダムライン
		PARTICLE_ID_ONELINE,			// 一つライン
		PARTICLE_ID_CONCENTLINE,		// コネクトライン
		PARTICLE_ID_BALLOON,			// 風船
		PARTICLE_ID_MAX,
	} PARTICLE_ID;
	/* 構造体 */
	// パーティクル情報
	typedef struct PARTICLE_INFO
	{
		PARTICLE_INFO()
		{
			nFrame			= 0;				// フレーム時間
			nNumber			= 0;				// 出現個数
			nEffectTexType	= 0;				// エフェクトのテクスチャの種類
			nEffectType		= 0;				// エフェクトの種類
			type = TYPE_NORMAL;					// 種類(主に移動の)
			/* 位置情報 */
			Pos				= D3DVECTOR3_ZERO;	// 位置
			PosXRand		= INTEGER2(0,0);	// 位置X座標ランダム用
			PosYRand		= INTEGER2(0, 0);	// 位置Y座標ランダム用
			PosZRand		= INTEGER2(0, 0);	// 位置Y座標ランダム用
			/* カラー情報 */
			Col = D3DXCOLOR_INI;				// 色
			bRedRand		= false;			// 赤ランダム
			bGreenRand		= false;			// 緑ランダム
			bBlueRand		= false;			// 青ランダム
			bAlphaRand		= false;			// 透明度ランダム
			/* サイズ情報 */
			Size = D3DVECTOR2_ZERO;				// サイズ
			SizeXRand		= INTEGER2(0, 0);	// サイズxランダム用
			SizeYRand		= INTEGER2(0, 0);	// サイズyランダム用
			/* 角度情報 */
			Rot				= D3DVECTOR3_ZERO;	// 回転ー
			nAngleRand		= INTEGER2(0, 0);	// 角度のランダム用
			/* 速度情報 */
			fSpeed			= 0.0f;				// 速度
			nSpeedRand		= INTEGER2(0, 0);	// 速度のランダム用
			/* ライフ情報 */
			nLife			= 0;				// ライフ
			nLifeRand		= INTEGER2(0, 0);	// ライフのランダム用
			/* ブレンドタイプ */
			Blend = CRenderer::BLEND_TRANSLUCENT;	// ブレンドタイプ
		}
		// 変数宣言
		int					nFrame;			// フレーム時間
		int					nNumber;		// 出現個数
		int					nEffectTexType;	// エフェクトのテクスチャの種類
		int					nEffectType;	// エフェクトの種類
		C3DParticle::TYPE	type;			// 種類(主に移動の)
		/* 位置情報 */
		D3DXVECTOR3			Pos;			// 位置
		INTEGER2			PosXRand;		// 位置X座標ランダム用
		INTEGER2			PosYRand;		// 位置Y座標ランダム用
		INTEGER2			PosZRand;		// 位置Y座標ランダム用
		/* カラー情報 */
		D3DXCOLOR			Col;			// 色
		bool				bRedRand;		// 赤ランダム
		bool				bGreenRand;		// 緑ランダム
		bool				bBlueRand;		// 青ランダム
		bool				bAlphaRand;		// 透明度ランダム
		/* サイズ情報 */
		D3DXVECTOR2			Size;			// サイズ
		INTEGER2			SizeXRand;		// サイズxランダム用
		INTEGER2			SizeYRand;		// サイズyランダム用
		/* 角度情報 */
		D3DXVECTOR3			Rot;			// 回転ー
		INTEGER2			nAngleRand;		// 角度のランダム用
		/* 速度情報 */
		float				fSpeed;			// 速度
		INTEGER2			nSpeedRand;		// 速度のランダム用
		/* ライフ情報 */
		int					nLife;			// ライフ
		INTEGER2			nLifeRand;		// ライフのランダム用
		/* ブレンドタイプ */
		CRenderer::BLEND	Blend;			// ブレンドタイプ
	} PARTICLE_INFO;

	/* 関数 */
	// コンストラクタ
	C3DParticle();
	// デストラクタ
	~C3DParticle();
	// 初期化処理
	void Init(void);
	// 終了処理
	void Uninit(void);
	// 更新処理
	void Update(void);
	// 描画処理
	void Draw(void);
#ifdef _DEBUG
	// デバッグ処理
	void Debug(void);
#endif // _DEBUG
	// 当たった後の処理
	//	nObjType	: オブジェクトタイプ
	//	pScene		: 相手のシーン情報
	virtual void Scene_MyCollision(
		int const &nObjType = 0,	// オブジェクトタイプ
		CScene * pScene = NULL		// 相手のシーン情報
	) {};
	// 相手に当てられた後の処理
	//	nObjType	: オブジェクトタイプ
	//	pScene		: 相手のシーン情報
	virtual void Scene_OpponentCollision(
		int const &nObjType = 0,	// オブジェクトタイプ
		CScene * pScene = NULL		// 相手のシーン情報
	) {};
	// ポインター位置情報を取得
	D3DXVECTOR3 * Scene_GetPPos(void) { return &m_Origin; };
	// ポインター過去の位置情報を取得
	D3DXVECTOR3 * Scene_GetPPosold(void) { return NULL; };
	// ポインター移動量情報の取得
	D3DXVECTOR3 * Scene_GetPMove(void) { return NULL; };
	// 生成
	//	ParticleId	: パーティクル番号
	//	origin		: 初期位置
	static C3DParticle * Create(
		PARTICLE_ID const	&ParticleId,	// パーティクル番号
		D3DXVECTOR3 const	&origin,		// 初期位置
		bool		const	&b2D = false	// 2D描画状態
	);
	// 全リソース情報の読み込み
	static HRESULT Load(void);
	// 全リソース情報の開放
	static void Unload(void);
	// パーティクル番号設定
	//	ParticleId	: パーティクル番号
	void SetParticle(
		PARTICLE_ID const	&ParticleId	// パーティクル番号
	);
	// 初期位置設定
	//	origin	: 初期位置
	void SetOrigin(
		D3DXVECTOR3 const	&origin		// 初期位置
	);

private:
	/* 関数 */

	/* 変数 */
	static PARTICLE_INFO	*m_ParticleOffset[PARTICLE_ID_MAX];	// パーティクルのオフセット
	PARTICLE_ID				m_offsetID;							// オフセットID
	bool					m_b2D;								// 2D描画状態
	int						m_nFrameCount;						// フレームのカウント
	D3DXVECTOR3				m_Origin;							// 原点
};

#endif
