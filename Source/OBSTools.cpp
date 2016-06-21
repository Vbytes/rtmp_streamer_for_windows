#include "OBSTools.h"


OBSTools::OBSTools()
{
}


OBSTools::~OBSTools()
{
}
int OBSTools::HasSSE2Support()
{
	int cpuInfo[4];
	//SSE2ÊÇIA-32¼Ü¹¹µÄÑÓÉì
	__cpuid(cpuInfo, 1);

	return (cpuInfo[3] & (1 << 26)) != 0;
}