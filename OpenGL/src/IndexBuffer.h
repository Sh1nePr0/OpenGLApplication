#pragma once


class IndexBuffer
{
public:
	IndexBuffer(const unsigned int* data, unsigned int count);
	~IndexBuffer();

	void Bind() const;
	void UnBind() const;


private:
	unsigned int m_RendererID;
	unsigned int m_Count;

public:

	inline unsigned int GetCount() const { return m_Count; };
};