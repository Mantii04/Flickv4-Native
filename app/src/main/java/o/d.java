package o;

import android.content.Context;
import android.content.res.ColorStateList;

/* loaded from: classes.dex */
public interface d {
    ColorStateList getBackgroundColor(c cVar);

    float getElevation(c cVar);

    float getMaxElevation(c cVar);

    float getRadius(c cVar);

    void initStatic();

    void initialize(c cVar, Context context, ColorStateList colorStateList, float f3, float f7, float f8);

    void onCompatPaddingChanged(c cVar);

    void onPreventCornerOverlapChanged(c cVar);

    void setBackgroundColor(c cVar, ColorStateList colorStateList);

    void setElevation(c cVar, float f3);

    void setMaxElevation(c cVar, float f3);

    void setRadius(c cVar, float f3);
}
