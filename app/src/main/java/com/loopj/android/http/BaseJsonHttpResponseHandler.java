package com.loopj.android.http;

import cz.msebera.android.httpclient.Header;

/* loaded from: classes2.dex */
public abstract class BaseJsonHttpResponseHandler<JSON_TYPE> extends TextHttpResponseHandler {
    private static final String LOG_TAG = "BaseJsonHttpRH";

    public BaseJsonHttpResponseHandler() {
        this("UTF-8");
    }

    @Override // com.loopj.android.http.TextHttpResponseHandler
    public final void onFailure(final int i2, final Header[] headerArr, final String str, final Throwable th) {
        if (str == null) {
            onFailure(i2, headerArr, th, null, null);
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final Object parseResponse = BaseJsonHttpResponseHandler.this.parseResponse(str, true);
                    BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.2.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            BaseJsonHttpResponseHandler.this.onFailure(i2, headerArr, th, str, parseResponse);
                        }
                    });
                } catch (Throwable th2) {
                    AsyncHttpClient.log.d(BaseJsonHttpResponseHandler.LOG_TAG, "parseResponse thrown an problem", th2);
                    BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            BaseJsonHttpResponseHandler.this.onFailure(i2, headerArr, th, str, null);
                        }
                    });
                }
            }
        };
        if (getUseSynchronousMode() || getUsePoolThread()) {
            runnable.run();
        } else {
            new Thread(runnable).start();
        }
    }

    public abstract void onFailure(int i2, Header[] headerArr, Throwable th, String str, JSON_TYPE json_type);

    @Override // com.loopj.android.http.TextHttpResponseHandler
    public final void onSuccess(final int i2, final Header[] headerArr, final String str) {
        if (i2 == 204) {
            onSuccess(i2, headerArr, null, null);
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final Object parseResponse = BaseJsonHttpResponseHandler.this.parseResponse(str, false);
                    BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.1.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            BaseJsonHttpResponseHandler.this.onSuccess(i2, headerArr, str, parseResponse);
                        }
                    });
                } catch (Throwable th) {
                    AsyncHttpClient.log.d(BaseJsonHttpResponseHandler.LOG_TAG, "parseResponse thrown an problem", th);
                    BaseJsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.BaseJsonHttpResponseHandler.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            BaseJsonHttpResponseHandler.this.onFailure(i2, headerArr, th, str, null);
                        }
                    });
                }
            }
        };
        if (getUseSynchronousMode() || getUsePoolThread()) {
            runnable.run();
        } else {
            new Thread(runnable).start();
        }
    }

    public abstract void onSuccess(int i2, Header[] headerArr, String str, JSON_TYPE json_type);

    public abstract JSON_TYPE parseResponse(String str, boolean z6) throws Throwable;

    public BaseJsonHttpResponseHandler(String str) {
        super(str);
    }
}
