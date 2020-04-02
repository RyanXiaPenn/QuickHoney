#ifndef __Version_h__
#define __Version_h__

#define STRINGIZE_HELPER(x) #x
#define STRINGIZE(x) STRINGIZE_HELPER(x)
#define WARNING(desc) message(__FILE__ "(" STRINGIZE(__LINE__) ") : Warning: " #desc)

#define GIT_SHA1 "5376b9f88c4d2eef56f4b5271ddb36c5dfe1d1d0"
#define GIT_REFSPEC ""
#define GIT_LOCAL_STATUS "CLEAN"

#ifdef DL_OUTPUT

#endif

#endif
