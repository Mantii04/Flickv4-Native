package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface TransferListener {
    void onBytesTransferred(DataSource dataSource, DataSpec dataSpec, boolean z6, int i2);

    void onTransferEnd(DataSource dataSource, DataSpec dataSpec, boolean z6);

    void onTransferInitializing(DataSource dataSource, DataSpec dataSpec, boolean z6);

    void onTransferStart(DataSource dataSource, DataSpec dataSpec, boolean z6);
}
