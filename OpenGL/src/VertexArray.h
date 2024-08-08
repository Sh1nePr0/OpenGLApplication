#pragma once

#include "VertexBuffer.h"

class VertexBufferLayout;

class VertexArray
{
public:
	VertexArray();
	~VertexArray();

	void AddBufffer(const VertexBuffer& vbo, const VertexBufferLayout& layout);

	void Bind() const;
	void UnBind() const;

private:
	unsigned int m_RendererID;
};