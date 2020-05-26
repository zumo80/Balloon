// ----------------------------------------
//
// �f�o�b�O�p�̓����蔻��\�������̐���[debugcollision.cpp]
// Author : Koki Nishiyama
//
// ----------------------------------------

// ----------------------------------------
//
// �C���N���[�h�t�@�C��
//
// ----------------------------------------
/* �`�� */
#include "debugcollision.h"
#include "3Dline.h"

// ----------------------------------------
//
// �}�N����`
//
// ----------------------------------------

// ----------------------------------------
//
// �O���[�o���ϐ�
//
// ----------------------------------------

// ----------------------------------------
//
// �ÓI�ϐ��錾
//
// ----------------------------------------

// ----------------------------------------
// �R���X�g���N�^����
// ----------------------------------------
CDebugcollision::CDebugcollision() : CScene::CScene()
{
	m_ppos = NULL;
	m_size = NULL;
	m_type = COLLISIONTYPE_BOX;
}

// ----------------------------------------
// �f�X�g���N�^����
// ----------------------------------------
CDebugcollision::~CDebugcollision()
{
}

// ----------------------------------------
// ����������
// ----------------------------------------
void CDebugcollision::Init(void)
{
	switch (m_type)
	{
	case COLLISIONTYPE_BOX:
		BoxCollision();
		break;
	default:
		break;
	}
}

// ----------------------------------------
// ���̓����蔻�菈��
// ----------------------------------------
void CDebugcollision::BoxCollision(void)
{
	// 1��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f,0.0f,0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f,-m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, -m_size->z * 0.5f)
	);
	// 2��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f)
	);
	// 3��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f)
	);
	// 4��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f, -m_size->z * 0.5f)
	);
	// 5��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 6��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 7��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 8��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, -m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 9��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 10��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 11��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f)
	);
	// 12��
	C3DLine::Create(
		m_ppos,
		D3DXVECTOR3(0.0f, 0.0f, 0.0f),
		D3DXVECTOR3(-m_size->x * 0.5f, -m_size->y * 0.5f, m_size->z * 0.5f),
		D3DXVECTOR3(-m_size->x * 0.5f, m_size->y * 0.5f, m_size->z * 0.5f)
	);

}

// ----------------------------------------
// �I������
// ----------------------------------------
void CDebugcollision::Uninit(void)
{
}

// ----------------------------------------
// �X�V����
// ----------------------------------------
void CDebugcollision::Update(void)
{
}

// ----------------------------------------
// �`�揈��
// ----------------------------------------
void CDebugcollision::Draw(void)
{
}

#ifdef _DEBUG
//-------------------------------------------------------------------------------------------------------------
// �f�o�b�O�\��
//-------------------------------------------------------------------------------------------------------------
void CDebugcollision::Debug(void)
{
}
#endif // _DEBUG

// ----------------------------------------
// ��������
// ----------------------------------------
CDebugcollision * CDebugcollision::Create(
	D3DXVECTOR3 * pos,
	D3DXVECTOR3 * size,
	COLLISIONTYPE type
)
{
	// �ϐ��錾
	CDebugcollision * pDebugcollision;	// �f�o�b�O�����蔻��
	// �������m��
	pDebugcollision = new CDebugcollision;
	// �V�[���Ǘ��ݒ�
	pDebugcollision->ManageSetting(CScene::LAYER_3DOBJECT);
	// �ݒ�
	pDebugcollision->m_ppos = pos;
	pDebugcollision->m_size = size;
	pDebugcollision->m_type = type;
	// ������
	pDebugcollision->Init();
	// �Ԃ�
	return pDebugcollision;
}