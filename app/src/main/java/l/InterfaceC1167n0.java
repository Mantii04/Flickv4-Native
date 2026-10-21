package l;

import android.graphics.drawable.Drawable;
import android.widget.ListAdapter;

/* renamed from: l.n0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1167n0 {
    void dismiss();

    Drawable getBackground();

    CharSequence getHintText();

    int getHorizontalOffset();

    int getVerticalOffset();

    boolean isShowing();

    void setAdapter(ListAdapter listAdapter);

    void setBackgroundDrawable(Drawable drawable);

    void setHorizontalOffset(int i2);

    void setHorizontalOriginalOffset(int i2);

    void setPromptText(CharSequence charSequence);

    void setVerticalOffset(int i2);

    void show(int i2, int i7);
}
