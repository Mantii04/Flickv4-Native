package K3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public final class s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1728a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextView f1729b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1730c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f1731d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u f1732e;

    public s(u uVar, int i2, TextView textView, int i7, TextView textView2) {
        this.f1732e = uVar;
        this.f1728a = i2;
        this.f1729b = textView;
        this.f1730c = i7;
        this.f1731d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        int i2 = this.f1728a;
        u uVar = this.f1732e;
        uVar.f1749n = i2;
        uVar.f1747l = null;
        TextView textView = this.f1729b;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f1730c == 1 && (appCompatTextView = uVar.f1753r) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f1731d;
        if (textView2 != null) {
            textView2.setTranslationY(0.0f);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        TextView textView = this.f1731d;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(0.0f);
        }
    }
}
