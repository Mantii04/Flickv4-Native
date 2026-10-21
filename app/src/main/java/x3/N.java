package x3;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public abstract class N {

    /* renamed from: a, reason: collision with root package name */
    public static final M f20889a = new M();

    public static ArrayList a(Toolbar toolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    public static ImageView getLogoImageView(Toolbar toolbar) {
        ImageView imageView;
        Drawable drawable;
        Drawable logo = toolbar.getLogo();
        if (logo == null) {
            return null;
        }
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if ((childAt instanceof ImageView) && (drawable = (imageView = (ImageView) childAt).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                return imageView;
            }
        }
        return null;
    }

    public static TextView getSubtitleTextView(Toolbar toolbar) {
        ArrayList a7 = a(toolbar, toolbar.getSubtitle());
        if (a7.isEmpty()) {
            return null;
        }
        return (TextView) Collections.max(a7, f20889a);
    }

    public static TextView getTitleTextView(Toolbar toolbar) {
        ArrayList a7 = a(toolbar, toolbar.getTitle());
        if (a7.isEmpty()) {
            return null;
        }
        return (TextView) Collections.min(a7, f20889a);
    }
}
