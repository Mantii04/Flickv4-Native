package I3;

import M.AbstractC0181p0;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar$Behavior;
import java.util.List;
import y.C1862f;

/* loaded from: classes2.dex */
public final class h implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        int i2 = message.what;
        int i7 = 0;
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
            t tVar = (t) message.obj;
            int i8 = message.arg1;
            AccessibilityManager accessibilityManager = tVar.f1373t;
            if (accessibilityManager == null || ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) != null && enabledAccessibilityServiceList.isEmpty())) {
                s sVar = tVar.f1362i;
                if (sVar.getVisibility() == 0) {
                    if (sVar.getAnimationMode() == 1) {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                        ofFloat.setInterpolator(tVar.f1357d);
                        ofFloat.addUpdateListener(new b(tVar));
                        ofFloat.setDuration(tVar.f1355b);
                        ofFloat.addListener(new C0109a(tVar, i8));
                        ofFloat.start();
                        return true;
                    }
                    ValueAnimator valueAnimator = new ValueAnimator();
                    int height = sVar.getHeight();
                    ViewGroup.LayoutParams layoutParams = sVar.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    }
                    valueAnimator.setIntValues(0, height);
                    valueAnimator.setInterpolator(tVar.f1358e);
                    valueAnimator.setDuration(tVar.f1356c);
                    valueAnimator.addListener(new f(tVar, i8));
                    valueAnimator.addUpdateListener(new g(tVar));
                    valueAnimator.start();
                    return true;
                }
            }
            tVar.a();
            return true;
        }
        t tVar2 = (t) message.obj;
        s sVar2 = tVar2.f1362i;
        if (sVar2.getParent() == null) {
            ViewGroup.LayoutParams layoutParams2 = sVar2.getLayoutParams();
            if (layoutParams2 instanceof C1862f) {
                C1862f c1862f = (C1862f) layoutParams2;
                SwipeDismissBehavior<? extends View> newBehavior = tVar2.getNewBehavior();
                if (newBehavior instanceof BaseTransientBottomBar$Behavior) {
                    ((BaseTransientBottomBar$Behavior) newBehavior).f12807s.setBaseTransientBottomBar(tVar2);
                }
                newBehavior.setListener(new n(tVar2));
                c1862f.setBehavior(newBehavior);
                if (tVar2.getAnchorView() == null) {
                    c1862f.f20942g = 80;
                }
            }
            sVar2.f1347t = true;
            ViewGroup viewGroup = tVar2.f1360g;
            viewGroup.addView(sVar2);
            sVar2.f1347t = false;
            if (tVar2.getAnchorView() != null) {
                int[] iArr = new int[2];
                tVar2.getAnchorView().getLocationOnScreen(iArr);
                int i9 = iArr[1];
                int[] iArr2 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                i7 = (viewGroup.getHeight() + iArr2[1]) - i9;
            }
            tVar2.f1369p = i7;
            tVar2.c();
            sVar2.setVisibility(4);
        }
        if (AbstractC0181p0.isLaidOut(sVar2)) {
            tVar2.b();
            return true;
        }
        tVar2.f1372s = true;
        return true;
    }
}
