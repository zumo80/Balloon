// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// 敵処理 [enemy.h]
// Author : KOKI NISHIYAMA
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _ENEMY_H_
#define _ENEMY_H_

#define _CRT_SECURE_NO_WARNINGS

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// インクルードファイル
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "character.h"

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// 前方宣言
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// クラス
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CEnemy : public CCharacter
{
public:	
	/* 関数 */
	// 自分自身用
	CEnemy(CHARACTER const &character);
	virtual ~CEnemy();
	virtual void Init(void);
	virtual void Uninit(void);
	virtual void Update(void);
	virtual void Draw(void);
#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	// 敵が死んだときの関数
	virtual void Die(void) = 0;
	static HRESULT Load(void);								// 読み込み
	static void UnLoad(void);								// UnLoadする
protected:
	/* 列挙型 */
	/* 変数 */
	// 行動
private:
	/* 関数 */

	/* 変数 */
};
#endif
