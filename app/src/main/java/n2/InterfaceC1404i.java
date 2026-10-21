package n2;

import com.bumptech.glide.load.DataSource;

/* renamed from: n2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1404i {
    void onDataFetcherFailed(l2.m mVar, Exception exc, com.bumptech.glide.load.data.e eVar, DataSource dataSource);

    void onDataFetcherReady(l2.m mVar, Object obj, com.bumptech.glide.load.data.e eVar, DataSource dataSource, l2.m mVar2);

    void reschedule();
}
