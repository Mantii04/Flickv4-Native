package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import m1.AbstractC1294m0;

/* loaded from: classes2.dex */
public final class t extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ G f12649a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f12650b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12651c;

    public t(MaterialCalendar materialCalendar, G g7, MaterialButton materialButton) {
        this.f12651c = materialCalendar;
        this.f12649a = g7;
        this.f12650b = materialButton;
    }

    @Override // m1.AbstractC1294m0
    public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
        if (i2 == 0) {
            recyclerView.announceForAccessibility(this.f12650b.getText());
        }
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
        String formatDateTime;
        DateFormat instanceForSkeleton;
        TimeZone timeZone;
        DisplayContext unused;
        MaterialCalendar materialCalendar = this.f12651c;
        int findFirstVisibleItemPosition = i2 < 0 ? ((LinearLayoutManager) materialCalendar.f12608m0.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) materialCalendar.f12608m0.getLayoutManager()).findLastVisibleItemPosition();
        C0750d c0750d = this.f12649a.f12597d;
        Calendar a7 = M.a(c0750d.f12626b.f12581b);
        a7.add(2, findFirstVisibleItemPosition);
        materialCalendar.f12604i0 = new C(a7);
        Calendar a8 = M.a(c0750d.f12626b.f12581b);
        a8.add(2, findFirstVisibleItemPosition);
        a8.set(5, 1);
        Calendar a9 = M.a(a8);
        a9.get(2);
        a9.get(1);
        a9.getMaximum(7);
        a9.getActualMaximum(5);
        a9.getTimeInMillis();
        long timeInMillis = a9.getTimeInMillis();
        if (Build.VERSION.SDK_INT >= 24) {
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = M.f12601a;
            instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            timeZone = TimeZone.getTimeZone("UTC");
            instanceForSkeleton.setTimeZone(timeZone);
            unused = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            formatDateTime = instanceForSkeleton.format(new Date(timeInMillis));
        } else {
            formatDateTime = DateUtils.formatDateTime(null, timeInMillis, 8228);
        }
        this.f12650b.setText(formatDateTime);
    }
}
