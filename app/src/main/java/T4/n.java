package T4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import flix.com.vision.R;

/* loaded from: classes2.dex */
public final class n {
    public n(Context context) {
        TextPaint textPaint = new TextPaint();
        new Rect();
        new Canvas();
        Resources resources = context.getResources();
        textPaint.setTypeface(Typeface.create("sans-serif-light", 0));
        textPaint.setColor(-1);
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setAntiAlias(true);
        resources.obtainTypedArray(R.array.letter_tile_colors);
        resources.getDimensionPixelSize(R.dimen.tile_letter_font_size);
        BitmapFactory.decodeResource(resources, android.R.drawable.sym_def_app_icon);
    }
}
