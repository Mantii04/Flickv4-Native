package androidx.leanback.widget;

import android.os.SystemClock;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class X0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f6760b;

    public X0(SearchBar searchBar) {
        this.f6760b = searchBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchBar searchBar = this.f6760b;
        searchBar.f6678b.requestFocusFromTouch();
        searchBar.f6678b.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, searchBar.f6678b.getWidth(), searchBar.f6678b.getHeight(), 0));
        searchBar.f6678b.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, searchBar.f6678b.getWidth(), searchBar.f6678b.getHeight(), 0));
    }
}
