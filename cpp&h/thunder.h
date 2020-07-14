// ==========================================================
//
// ��[thunder.h]
// Author:Ryouma Inoue
//
// ==========================================================
#ifndef _THUNDER_H_
#define _THUNDER_H_

#include "main.h"
#include "scene_three.h"


// ==========================================================
// �}�N����`
// ==========================================================
#define	TEXTURE_THUNDER	"data/TEXTURE/coin.png"			// �ǂݍ��ރe�N�X�`���t�@�C����
#define	MAX_DISTANCE (100)								// ����

// ==========================================================
//
// �N���X�̒�`
//
// ==========================================================
class CThunder : public CScene_THREE
{
public:

	CThunder();												// �R���X�g���N�^
	~CThunder();											// �f�X�g���N�^

	void Init(void);										// ������
	void Uninit(void);										// �I��
	void Update(void);										// �X�V
	void Draw(void);										// �`��

	static CThunder *Create(D3DXVECTOR3 pos, D3DXVECTOR3 size);					// ����
	static void Unload(void);													// �A�����[�h

private:
	static LPDIRECT3DTEXTURE9 m_pTex;					// �e�N�X�`��
	LPDIRECT3DVERTEXBUFFER9	m_pVtxBuff = NULL;			// ���_�o�b�t�@�ւ̃|�C���^
	VERTEX_3D *m_pVtx;									// ���_���ւ̃|�C���^
	D3DXMATRIX m_mtxWorld;								// ���[���h�}�g���b�N�X

	static CThunder *m_pThunder;

	D3DXVECTOR3	m_vtxMin;								// �ŏ��l
	D3DXVECTOR3	m_vtxMax;								// �ő�l
	D3DXVECTOR3 m_pos;									// �ʒu
	D3DXVECTOR3 m_posOld;								// �O��̈ʒu
	D3DXVECTOR3 m_rot;									// ��]
	D3DXVECTOR3 m_move;									// �ړ���
	D3DXCOLOR m_col;									// �F

	int m_nCntEffect;
	float m_fDistance;									// ����

};
#endif