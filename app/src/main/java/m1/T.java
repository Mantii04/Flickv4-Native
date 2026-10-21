package m1;

import M.AbstractC0181p0;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class T {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18335a;

    public T(RecyclerView recyclerView) {
        this.f18335a = recyclerView;
    }

    public void addView(View view, int i2) {
        RecyclerView recyclerView = this.f18335a;
        recyclerView.addView(view, i2);
        recyclerView.getClass();
        B0 E6 = RecyclerView.E(view);
        recyclerView.onChildAttachedToWindow(view);
        V v6 = recyclerView.f8073v;
        if (v6 == null || E6 == null) {
            return;
        }
        v6.onViewAttachedToWindow(E6);
    }

    public void attachViewToParent(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        B0 E6 = RecyclerView.E(view);
        RecyclerView recyclerView = this.f18335a;
        if (E6 != null) {
            if (!E6.h() && !E6.l()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(E6);
                throw new IllegalArgumentException(b.c.i(recyclerView, sb));
            }
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "reAttach " + E6);
            }
            E6.f18226j &= -257;
        } else if (RecyclerView.f7998J0) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(i2);
            throw new IllegalArgumentException(b.c.i(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, i2, layoutParams);
    }

    public void detachViewFromParent(int i2) {
        View childAt = getChildAt(i2);
        RecyclerView recyclerView = this.f18335a;
        if (childAt != null) {
            B0 E6 = RecyclerView.E(childAt);
            if (E6 != null) {
                if (E6.h() && !E6.l()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(E6);
                    throw new IllegalArgumentException(b.c.i(recyclerView, sb));
                }
                if (RecyclerView.f7999K0) {
                    Log.d("RecyclerView", "tmpDetach " + E6);
                }
                E6.a(256);
            }
        } else if (RecyclerView.f7998J0) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(i2);
            throw new IllegalArgumentException(b.c.i(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(i2);
    }

    public View getChildAt(int i2) {
        return this.f18335a.getChildAt(i2);
    }

    public int getChildCount() {
        return this.f18335a.getChildCount();
    }

    public B0 getChildViewHolder(View view) {
        return RecyclerView.E(view);
    }

    public int indexOfChild(View view) {
        return this.f18335a.indexOfChild(view);
    }

    public void onEnteredHiddenState(View view) {
        B0 E6 = RecyclerView.E(view);
        if (E6 != null) {
            int i2 = E6.f18233q;
            View view2 = E6.f18217a;
            if (i2 != -1) {
                E6.f18232p = i2;
            } else {
                E6.f18232p = AbstractC0181p0.getImportantForAccessibility(view2);
            }
            RecyclerView recyclerView = this.f18335a;
            if (!recyclerView.isComputingLayout()) {
                AbstractC0181p0.setImportantForAccessibility(view2, 4);
            } else {
                E6.f18233q = 4;
                recyclerView.f8015D0.add(E6);
            }
        }
    }

    public void onLeftHiddenState(View view) {
        B0 E6 = RecyclerView.E(view);
        if (E6 != null) {
            int i2 = E6.f18232p;
            RecyclerView recyclerView = this.f18335a;
            if (recyclerView.isComputingLayout()) {
                E6.f18233q = i2;
                recyclerView.f8015D0.add(E6);
            } else {
                AbstractC0181p0.setImportantForAccessibility(E6.f18217a, i2);
            }
            E6.f18232p = 0;
        }
    }

    public void removeAllViews() {
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            RecyclerView recyclerView = this.f18335a;
            if (i2 >= childCount) {
                recyclerView.removeAllViews();
                return;
            }
            View childAt = getChildAt(i2);
            B0 E6 = RecyclerView.E(childAt);
            recyclerView.onChildDetachedFromWindow(childAt);
            V v6 = recyclerView.f8073v;
            if (v6 != null && E6 != null) {
                v6.onViewDetachedFromWindow(E6);
            }
            childAt.clearAnimation();
            i2++;
        }
    }

    public void removeViewAt(int i2) {
        RecyclerView recyclerView = this.f18335a;
        View childAt = recyclerView.getChildAt(i2);
        if (childAt != null) {
            B0 E6 = RecyclerView.E(childAt);
            recyclerView.onChildDetachedFromWindow(childAt);
            V v6 = recyclerView.f8073v;
            if (v6 != null && E6 != null) {
                v6.onViewDetachedFromWindow(E6);
            }
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i2);
    }
}
