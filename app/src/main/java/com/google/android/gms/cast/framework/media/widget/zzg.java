package com.google.android.gms.cast.framework.media.widget;

import android.annotation.TargetApi;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import com.google.android.gms.common.util.PlatformVersion;

/* loaded from: classes.dex */
final class zzg extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSeekBar f10239a;

    public /* synthetic */ zzg(CastSeekBar castSeekBar) {
        this.f10239a = castSeekBar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(SeekBar.class.getName());
        CastSeekBar castSeekBar = this.f10239a;
        accessibilityEvent.setItemCount(castSeekBar.f10143b.f10234b);
        accessibilityEvent.setCurrentItemIndex(castSeekBar.getProgress());
    }

    @Override // android.view.View.AccessibilityDelegate
    @TargetApi(16)
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SeekBar.class.getName());
        if (PlatformVersion.isAtLeastJellyBean() && view.isEnabled()) {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    @TargetApi(16)
    public final boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        if (view.isEnabled()) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            if (PlatformVersion.isAtLeastJellyBean() && (i2 == 4096 || i2 == 8192)) {
                int i7 = CastSeekBar.f10140C;
                CastSeekBar castSeekBar = this.f10239a;
                castSeekBar.f10144e = true;
                zzd zzdVar = castSeekBar.f10148n;
                if (zzdVar != null) {
                    zzdVar.zzb(castSeekBar);
                }
                int i8 = castSeekBar.f10143b.f10234b / 20;
                if (i2 == 8192) {
                    i8 = -i8;
                }
                castSeekBar.c(castSeekBar.getProgress() + i8);
                castSeekBar.f10144e = false;
                zzd zzdVar2 = castSeekBar.f10148n;
                if (zzdVar2 != null) {
                    zzdVar2.zzc(castSeekBar);
                }
            }
        }
        return false;
    }
}
