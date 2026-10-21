package l;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.AttributeSet;
import android.widget.AbsSeekBar;

/* loaded from: classes.dex */
public class U {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f17771c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* renamed from: a, reason: collision with root package name */
    public final AbsSeekBar f17772a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f17773b;

    public U(AbsSeekBar absSeekBar) {
        this.f17772a = absSeekBar;
    }

    public void a(AttributeSet attributeSet, int i2) {
        AbsSeekBar absSeekBar = this.f17772a;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(absSeekBar.getContext(), attributeSet, f17771c, i2, 0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            if (drawableIfKnown instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawableIfKnown;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i7 = 0; i7 < numberOfFrames; i7++) {
                    Drawable b7 = b(animationDrawable.getFrame(i7), true);
                    b7.setLevel(10000);
                    animationDrawable2.addFrame(b7, animationDrawable.getDuration(i7));
                }
                animationDrawable2.setLevel(10000);
                drawableIfKnown = animationDrawable2;
            }
            absSeekBar.setIndeterminateDrawable(drawableIfKnown);
        }
        Drawable drawableIfKnown2 = obtainStyledAttributes.getDrawableIfKnown(1);
        if (drawableIfKnown2 != null) {
            absSeekBar.setProgressDrawable(b(drawableIfKnown2, false));
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable b(Drawable drawable, boolean z6) {
        if (drawable instanceof E.h) {
            E.i iVar = (E.i) ((E.h) drawable);
            Drawable a7 = iVar.a();
            if (a7 != null) {
                iVar.b(b(a7, z6));
                return drawable;
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    int id = layerDrawable.getId(i2);
                    drawableArr[i2] = b(layerDrawable.getDrawable(i2), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i7 = 0; i7 < numberOfLayers; i7++) {
                    layerDrawable2.setId(i7, layerDrawable.getId(i7));
                    T.transferLayerProperties(layerDrawable, layerDrawable2, i7);
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f17773b == null) {
                    this.f17773b = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z6 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
