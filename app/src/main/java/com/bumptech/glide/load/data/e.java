package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;

/* loaded from: classes.dex */
public interface e {
    void cancel();

    void cleanup();

    Class<Object> getDataClass();

    DataSource getDataSource();

    void loadData(Priority priority, d dVar);
}
