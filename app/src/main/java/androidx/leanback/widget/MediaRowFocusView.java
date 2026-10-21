package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
class MediaRowFocusView extends View {

    /* renamed from: b, reason: collision with root package name */
    public final Paint f6614b;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f6615e;

    /* renamed from: f, reason: collision with root package name */
    public int f6616f;

    public MediaRowFocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6615e = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(androidx.leanback.R.color.lb_playback_media_row_highlight_color));
        this.f6614b = paint;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        this.f6616f = height;
        int height2 = ((height * 2) - getHeight()) / 2;
        RectF rectF = this.f6615e;
        rectF.set(0.0f, -height2, getWidth(), getHeight() + height2);
        int i2 = this.f6616f;
        canvas.drawRoundRect(rectF, i2, i2, this.f6614b);
    }
}
