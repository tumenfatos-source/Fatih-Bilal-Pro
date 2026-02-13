#import <UIKit/UIKit.h>
#import <substrate.h>

// --- SECURITY BYPASS ---
void (*orig_SecurityNotify)(void *instance);
void hook_SecurityNotify(void *instance) {
    return;
}

// --- CHEAT FUNCTIONS ---
float hook_GetFOV(void *instance) { return 125.0f; }
float hook_Recoil(void *instance) { return 0.0f; }
float hook_B_Speed(void *instance) { return 9999.0f; }
float hook_V_Gravity(void *instance) { return -750.0f; }
float hook_H_Gravity(void *instance) { return -1.5f; }
float hook_W_Scale(void *instance) { return 4.0f; }

// --- INITIALIZATION ---
%ctor {
    MSHookFunction((void *)0x42A1B2C3, (void *)hook_SecurityNotify, (void **)&orig_SecurityNotify);
    MSHookFunction((void *)0x42B2C3D4, (void *)hook_GetFOV, NULL);
    MSHookFunction((void *)0x42C3D4E5, (void *)hook_Recoil, NULL);
    MSHookFunction((void *)0x42D4E5F6, (void *)hook_V_Gravity, NULL);
    
    NSLog(@"[Bilal_v4.2] Status: Active | Anti-Ban: Secured");
}

