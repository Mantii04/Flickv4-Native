package y1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;

/* renamed from: y1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1875f extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public v f20978a;

    /* renamed from: b, reason: collision with root package name */
    public AnimatorSet f20979b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f20980c;

    /* renamed from: d, reason: collision with root package name */
    public p.g f20981d;

    public C1875f(Context context, C1875f c1875f, Drawable.Callback callback, Resources resources) {
        if (c1875f != null) {
            v vVar = c1875f.f20978a;
            if (vVar != null) {
                Drawable.ConstantState constantState = vVar.getConstantState();
                if (resources != null) {
                    this.f20978a = (v) constantState.newDrawable(resources);
                } else {
                    this.f20978a = (v) constantState.newDrawable();
                }
                v vVar2 = (v) this.f20978a.mutate();
                this.f20978a = vVar2;
                vVar2.setCallback(callback);
                this.f20978a.setBounds(c1875f.f20978a.getBounds());
                this.f20978a.f21050n = false;
            }
            ArrayList arrayList = c1875f.f20980c;
            if (arrayList != null) {
                int size = arrayList.size();
                this.f20980c = new ArrayList(size);
                this.f20981d = new p.g(size);
                for (int i2 = 0; i2 < size; i2++) {
                    Animator animator = (Animator) c1875f.f20980c.get(i2);
                    Animator clone = animator.clone();
                    String str = (String) c1875f.f20981d.get(animator);
                    clone.setTarget(this.f20978a.f21046e.f21033b.f21031o.get(str));
                    this.f20980c.add(clone);
                    this.f20981d.put(clone, str);
                }
                setupAnimatorSet();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }

    public void setupAnimatorSet() {
        if (this.f20979b == null) {
            this.f20979b = new AnimatorSet();
        }
        this.f20979b.playTogether(this.f20980c);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        throw new IllegalStateException("No constant state support for SDK < 24.");
    }
}
