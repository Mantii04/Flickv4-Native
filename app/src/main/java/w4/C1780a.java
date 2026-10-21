package w4;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import de.hdodenhof.circleimageview.CircleImageView;

/* renamed from: w4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1780a extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CircleImageView f20680a;

    public C1780a(CircleImageView circleImageView) {
        this.f20680a = circleImageView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        Rect rect = new Rect();
        this.f20680a.f13620e.roundOut(rect);
        outline.setRoundRect(rect, rect.width() / 2.0f);
    }
}
