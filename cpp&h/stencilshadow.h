// ----------------------------------------
//
// �X�e���V���V���h�E�����̐���[stencilshadow.h]
// Author : Koki Nishiyama
//
// ----------------------------------------
#ifndef _STENCILSHADOW_H_
#define _STENCILSHADOW_H_	 // �t�@�C������������߂�

// ----------------------------------------
//
// �C���N���[�h�t�@�C��
//
// ----------------------------------------
#include "scene.h"

// ----------------------------------------
//
// �}�N����`
//
// ----------------------------------------


// ----------------------------------------
//
// �O���錾
//
// ----------------------------------------
class CScene_TWO;

// ------------------------------------------
//
// �N���X
//
// ------------------------------------------
class CStencilshadow : public CScene
{
public:
	/* �񋓌^ */
	typedef enum
	{
		TYPE_NORMAL,
		TYPE_WAVE,
		TYPE_MAX
	} TYPE;
	/* �֐� */
	CStencilshadow();
	~CStencilshadow();
	void Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
#ifdef _DEBUG
	void Debug(void);
#endif // _DEBUG
	static HRESULT Load(void);
	static void UnLoad(void);
	// �쐬����(�V�[���Ǘ�)
	static CStencilshadow * Create(	
		D3DXVECTOR3 const &pos,							// �ʒu
		D3DXVECTOR3 const &size,						// �T�C�Y
		int const &nWidth = 10,							// ����
		int const &nDepth = 5,							// �c��
		TYPE const &type = TYPE_NORMAL,					// �^�C�v
		D3DXCOLOR	const &col = D3DXCOLOR_INI,			// �J���[
		D3DXVECTOR3 const &rot = D3DVECTOR3_ZERO		// ��]
	);
	// �쐬����(�l�Ǘ�)
	static CStencilshadow * Create_Self(
		D3DXVECTOR3 const &pos,							// �ʒu
		D3DXVECTOR3 const &size,						// �T�C�Y
		int const &nWidth = 10,							// ����
		int const &nDepth = 5,							// �c��
		TYPE const &type = TYPE_NORMAL,					// �^�C�v
		D3DXCOLOR	const &col = D3DXCOLOR_INI,			// �J���[
		D3DXVECTOR3 const &rot = D3DVECTOR3_ZERO		// ��]
	);
	// �擾
	bool GetUse(void);						// �g�p���
	// �ݒ�
	void SetPos(D3DXVECTOR3 const &pos);	// �ʒu
	void SetRot(D3DXVECTOR3 const &rot);	// ��]
	void SetCol(D3DXCOLOR const &col);		// �F
	void SetUse(bool const bUse);					// �g�p���
protected:

private:
	/* �֐� */
	void MakeVertex(LPDIRECT3DDEVICE9 pDevice);	// ���_���W�̐���
	/* �ϐ� */
	static int CStencilshadow::m_nTexId[TYPE_MAX];	// �e�N�X�`���[ID
	LPDIRECT3DVERTEXBUFFER9 m_pVtxBuff;			// ���_�o�b�t�@�ւ̃|�C���^
	LPDIRECT3DINDEXBUFFER9	m_pIndex;			// �C���f�b�N�X�o�b�t�@�̃|�C���^
	D3DXVECTOR3 m_OriginBlock;					// �����z�u
	D3DXMATRIX  m_mtxWorld;						// ���[���h�}�g���b�N�X
	D3DXVECTOR3 m_pos;							// �ʒu
	D3DXVECTOR3 m_size;							// �T�C�Y
	D3DXVECTOR3 m_rot;							// �p�x
	D3DXCOLOR	m_col;							// �F
	int		m_nNumberVertex;					// �����_��
	int		m_nNumIndex;						// ���C���f�b�N�X
	int		m_nNumPolygon;						// ���|���S��
	int		m_nBlock_Depth;						// �c�u���b�N��
	int		m_nBlock_Width;						// ���u���b�N��
	bool	m_bUse;								// �g�p
	TYPE	m_type;								// �^�C�v
	unique_ptr<CScene_TWO> m_pSceneTwo;						// 2D�|���S��
};

#endif