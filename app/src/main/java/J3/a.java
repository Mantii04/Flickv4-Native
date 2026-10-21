package J3;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import g3.AbstractC0951a;

/* loaded from: classes2.dex */
public final class a extends b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1510a;

    public /* synthetic */ a(int i2) {
        this.f1510a = i2;
    }

    @Override // J3.b
    public final void c(TabLayout tabLayout, View view, View view2, float f3, Drawable drawable) {
        float cos;
        float f7;
        switch (this.f1510a) {
            case 0:
                RectF a7 = b.a(tabLayout, view);
                RectF a8 = b.a(tabLayout, view2);
                if (a7.left < a8.left) {
                    double d7 = (f3 * 3.141592653589793d) / 2.0d;
                    f7 = (float) (1.0d - Math.cos(d7));
                    cos = (float) Math.sin(d7);
                } else {
                    double d8 = (f3 * 3.141592653589793d) / 2.0d;
                    float sin = (float) Math.sin(d8);
                    cos = (float) (1.0d - Math.cos(d8));
                    f7 = sin;
                }
                drawable.setBounds(AbstractC0951a.lerp((int) a7.left, (int) a8.left, f7), drawable.getBounds().top, AbstractC0951a.lerp((int) a7.right, (int) a8.right, cos), drawable.getBounds().bottom);
                break;
            default:
                if (f3 >= 0.5f) {
                    view = view2;
                }
                RectF a9 = b.a(tabLayout, view);
                float lerp = f3 < 0.5f ? AbstractC0951a.lerp(1.0f, 0.0f, 0.0f, 0.5f, f3) : AbstractC0951a.lerp(0.0f, 1.0f, 0.5f, 1.0f, f3);
                drawable.setBounds((int) a9.left, drawable.getBounds().top, (int) a9.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (lerp * 255.0f));
                break;
        }
    }
}
