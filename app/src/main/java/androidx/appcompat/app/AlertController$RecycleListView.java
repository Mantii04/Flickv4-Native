package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: b, reason: collision with root package name */
    public final int f4934b;

    /* renamed from: e, reason: collision with root package name */
    public final int f4935e;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecycleListView);
        this.f4935e = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingBottomNoButtons, -1);
        this.f4934b = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.RecycleListView_paddingTopNoTitle, -1);
    }

    public void setHasDecor(boolean z6, boolean z7) {
        if (z7 && z6) {
            return;
        }
        setPadding(getPaddingLeft(), z6 ? getPaddingTop() : this.f4934b, getPaddingRight(), z7 ? getPaddingBottom() : this.f4935e);
    }
}
