package m1;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: m1.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1299p extends AbstractC1276d0 {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f18451d = {R.attr.listDivider};

    /* renamed from: a, reason: collision with root package name */
    public Drawable f18452a;

    /* renamed from: b, reason: collision with root package name */
    public int f18453b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f18454c = new Rect();

    @SuppressLint({"UnknownNullness"})
    public C1299p(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f18451d);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        this.f18452a = drawable;
        if (drawable == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        obtainStyledAttributes.recycle();
        setOrientation(i2);
    }

    @Override // m1.AbstractC1276d0
    @SuppressLint({"UnknownNullness"})
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, x0 x0Var) {
        Drawable drawable = this.f18452a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f18453b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // m1.AbstractC1276d0
    @SuppressLint({"UnknownNullness"})
    public void onDraw(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        int height;
        int i2;
        int width;
        int i7;
        if (recyclerView.getLayoutManager() == null || this.f18452a == null) {
            return;
        }
        int i8 = this.f18453b;
        Rect rect = this.f18454c;
        int i9 = 0;
        if (i8 == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                i7 = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(i7, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                i7 = 0;
            }
            int childCount = recyclerView.getChildCount();
            while (i9 < childCount) {
                View childAt = recyclerView.getChildAt(i9);
                recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
                int round = Math.round(childAt.getTranslationY()) + rect.bottom;
                this.f18452a.setBounds(i7, round - this.f18452a.getIntrinsicHeight(), width, round);
                this.f18452a.draw(canvas);
                i9++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i2, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i2 = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        while (i9 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i9);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt2, rect);
            int round2 = Math.round(childAt2.getTranslationX()) + rect.right;
            this.f18452a.setBounds(round2 - this.f18452a.getIntrinsicWidth(), i2, round2, height);
            this.f18452a.draw(canvas);
            i9++;
        }
        canvas.restore();
    }

    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException("Drawable cannot be null.");
        }
        this.f18452a = drawable;
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.f18453b = i2;
    }
}
