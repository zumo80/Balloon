// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// プレイヤー(雷)処理 [p_thunder.h]
// Author : KOKI NISHIYAMA
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _P_THUNDER_H_
#define _P_THUNDER_H_

#define _CRT_SECURE_NO_WARNINGS

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// インクルードファイル
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "player.h"

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 前方宣言
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// クラス
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CP_thunder : public CPlayer
{
public:
	// ---------モーションタイプ---------- //
	typedef enum
	{
		MOTIONTYPE_MAX = CPlayer::MOTIONTYPE_MAX
	} MOTIONTYPE;
	/* 関数 */
	CP_thunder();
	~CP_thunder();
	void Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	// プレイヤーが死んだときの関数
	void Die(void);
#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	// 生成処理(シーン管理)
	static CP_thunder * Create(
		D3DXVECTOR3 const & pos = D3DVECTOR3_ZERO,
		D3DXVECTOR3 const & rot = D3DVECTOR3_ZERO
	);			// 作成
	// 生成処理(個人管理)
	static CP_thunder * Create_Self(
		D3DXVECTOR3 const & pos = D3DVECTOR3_ZERO,
		D3DXVECTOR3 const & rot = D3DVECTOR3_ZERO
	);
	static HRESULT Load(void);			// 読み込み
	static void UnLoad(void);			// UnLoadする
protected:
private:
	/* 構造体 */
	/* 関数 */

	/* 変数 */
};
#endif
