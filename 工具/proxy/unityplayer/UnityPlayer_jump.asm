.DATA
EXTERN pfnAheadLib_UnityMain:dq;

.CODE
AheadLib_UnityMain PROC
	jmp pfnAheadLib_UnityMain
AheadLib_UnityMain ENDP


END
