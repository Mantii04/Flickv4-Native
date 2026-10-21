package com.bumptech.glide.load.data;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public final class n {
    public HttpURLConnection build(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }
}
