package O3;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/* loaded from: classes2.dex */
public final class q extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public final ProgressBar f2410b;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f2411e;

    public q(Context context) {
        super(context, null, J.c(context));
        p pVar = new p(context);
        setBackgroundColor(-16777216);
        ProgressBar progressBar = new ProgressBar(context);
        this.f2410b = progressBar;
        progressBar.setVisibility(8);
        addView(progressBar, new FrameLayout.LayoutParams(-2, -2, 17));
        int i2 = (int) ((context.getResources().getDisplayMetrics().density * 10.0f) + 0.5f);
        TextView textView = new TextView(context);
        this.f2411e = textView;
        textView.setTextAppearance(context, R.style.TextAppearance.Small);
        textView.setTextColor(-1);
        textView.setVisibility(8);
        textView.setPadding(i2, i2, i2, i2);
        textView.setGravity(17);
        textView.setText(pVar.f2409a);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
    }

    public final void a() {
        this.f2410b.setVisibility(8);
        this.f2411e.setVisibility(8);
    }

    public final void b() {
        this.f2410b.setVisibility(0);
        this.f2411e.setVisibility(8);
    }

    public final void c() {
        this.f2410b.setVisibility(8);
        this.f2411e.setVisibility(0);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i7) {
        float f3;
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i7);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                size2 = (int) (size / 1.777f);
            } else {
                if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    f3 = size2;
                } else if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    f3 = size2;
                    float f7 = size / 1.777f;
                    if (f3 >= f7) {
                        size2 = (int) f7;
                    }
                } else {
                    size = 0;
                    size2 = 0;
                }
                size = (int) (f3 * 1.777f);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.resolveSize(size, i2), 1073741824), View.MeasureSpec.makeMeasureSpec(View.resolveSize(size2, i7), 1073741824));
    }
}
