// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// ���D�����̐���[balloon.h]
// Author : Koki Nishiyama
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef _BALLOON_H_
#define _BALLOON_H_	 // �t�@�C������������߂�

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �C���N���[�h�t�@�C��
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#include "scene_X.h"
#include "model_info.h"

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �}�N����`
//
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#define BALLOON_MAX (2)	// �o���镗�D�̌�

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �O���錾
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CCircleshadow;
class CScene_X;

// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//
// �N���X
//
// ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class CBalloon : public CScene
{
public:
	/* �֐� */
	CBalloon();
	~CBalloon();
	void Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	// �s����ݒ�
	void SetMatrix(D3DXMATRIX * mtx);			// �s����ݒ�
	// �V�[��X���擾
	CScene_X * GetSceneX(int const &nBalloon);	// �V�[��X�̏��擾
	// ����
	static CBalloon * Create(
		D3DXVECTOR3 const &pos,						// �ʒu
		D3DXVECTOR3 const &rot,						// ��]
		D3DXMATRIX *mtx								// �s��
	);					// �쐬
	// ���\�[�X���ǂݍ��ސݒ�
	static HRESULT Load(void);					// ���\�[�X���ǂݍ��ސݒ�
	// �ǂݍ��񂾃��\�[�X�����J������
	static void UnLoad(void);					// �ǂݍ��񂾃��\�[�X�����J������
protected:
private:
	/* �֐� */
	/* �ϐ� */
	CCircleshadow * m_pCircleShadow;			// �~�`�V���h�E
	CScene_X *m_apSceneX[BALLOON_MAX];			// �V�[��X���f�����
	int m_nBalloon;								// ���D�̌�
};

#endif