package C4;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;

/* renamed from: C4.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnFocusChangeListenerC0092p implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0093q f760b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f761e;

    public ViewOnFocusChangeListenerC0092p(r rVar, C0093q c0093q) {
        this.f761e = rVar;
        this.f760b = c0093q;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        r rVar = this.f761e;
        C0093q c0093q = this.f760b;
        if (!z6) {
            c0093q.f766y.setBorderColor(rVar.f767d.getResources().getColor(R.color.transparent));
            TextView textView = c0093q.f764w;
            TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
            textView.setEllipsize(truncateAt);
            c0093q.f764w.setFocusableInTouchMode(false);
            c0093q.f764w.setHorizontallyScrolling(false);
            c0093q.f764w.setSelected(false);
            c0093q.f764w.setHorizontalFadingEdgeEnabled(true);
            c0093q.f765x.setHorizontalFadingEdgeEnabled(true);
            c0093q.f765x.setEllipsize(truncateAt);
            c0093q.f765x.setFocusableInTouchMode(false);
            c0093q.f765x.setHorizontallyScrolling(false);
            c0093q.f765x.setSelected(false);
            return;
        }
        c0093q.f766y.setBorderColor(rVar.f767d.getResources().getColor(R.color.white));
        c0093q.f764w.setFocusable(true);
        TextView textView2 = c0093q.f764w;
        TextUtils.TruncateAt truncateAt2 = TextUtils.TruncateAt.MARQUEE;
        textView2.setEllipsize(truncateAt2);
        c0093q.f764w.setMarqueeRepeatLimit(6);
        c0093q.f764w.setFocusableInTouchMode(true);
        c0093q.f764w.setHorizontallyScrolling(true);
        c0093q.f764w.setSelected(true);
        c0093q.f764w.setHorizontalFadingEdgeEnabled(true);
        c0093q.f765x.setHorizontalFadingEdgeEnabled(true);
        c0093q.f765x.setFocusable(true);
        c0093q.f765x.setEllipsize(truncateAt2);
        c0093q.f765x.setMarqueeRepeatLimit(6);
        c0093q.f765x.setFocusableInTouchMode(true);
        c0093q.f765x.setHorizontallyScrolling(true);
        c0093q.f765x.setSelected(true);
    }
}
