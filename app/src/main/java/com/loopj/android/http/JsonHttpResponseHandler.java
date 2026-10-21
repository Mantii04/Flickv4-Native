package com.loopj.android.http;

import A.i;
import cz.msebera.android.httpclient.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes2.dex */
public class JsonHttpResponseHandler extends TextHttpResponseHandler {
    private static final String LOG_TAG = "JsonHttpRH";
    private boolean useRFC5179CompatibilityMode;

    public JsonHttpResponseHandler() {
        super("UTF-8");
        this.useRFC5179CompatibilityMode = true;
    }

    public boolean isUseRFC5179CompatibilityMode() {
        return this.useRFC5179CompatibilityMode;
    }

    public void onFailure(int i2, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received", th);
    }

    public void onSuccess(int i2, Header[] headerArr, JSONObject jSONObject) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received");
    }

    public Object parseResponse(byte[] bArr) throws JSONException {
        Object obj = null;
        if (bArr == null) {
            return null;
        }
        String responseString = TextHttpResponseHandler.getResponseString(bArr, getCharset());
        if (responseString != null) {
            responseString = responseString.trim();
            if (this.useRFC5179CompatibilityMode) {
                if (responseString.startsWith("{") || responseString.startsWith("[")) {
                    obj = new JSONTokener(responseString).nextValue();
                }
            } else if ((responseString.startsWith("{") && responseString.endsWith("}")) || (responseString.startsWith("[") && responseString.endsWith("]"))) {
                obj = new JSONTokener(responseString).nextValue();
            } else if (responseString.startsWith("\"") && responseString.endsWith("\"")) {
                obj = i.d(1, 1, responseString);
            }
        }
        return obj == null ? responseString : obj;
    }

    public void setUseRFC5179CompatibilityMode(boolean z6) {
        this.useRFC5179CompatibilityMode = z6;
    }

    public void onFailure(int i2, Header[] headerArr, Throwable th, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received", th);
    }

    public void onSuccess(int i2, Header[] headerArr, JSONArray jSONArray) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received");
    }

    public JsonHttpResponseHandler(String str) {
        super(str);
        this.useRFC5179CompatibilityMode = true;
    }

    @Override // com.loopj.android.http.TextHttpResponseHandler
    public void onFailure(int i2, Header[] headerArr, String str, Throwable th) {
        AsyncHttpClient.log.w(LOG_TAG, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received", th);
    }

    @Override // com.loopj.android.http.TextHttpResponseHandler
    public void onSuccess(int i2, Header[] headerArr, String str) {
        AsyncHttpClient.log.w(LOG_TAG, "onSuccess(int, Header[], String) was not overriden, but callback was received");
    }

    @Override // com.loopj.android.http.TextHttpResponseHandler, com.loopj.android.http.AsyncHttpResponseHandler
    public final void onFailure(final int i2, final Header[] headerArr, final byte[] bArr, final Throwable th) {
        if (bArr != null) {
            Runnable runnable = new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, (String) null, th);
                                    return;
                                }
                                Object obj = parseResponse;
                                if (obj instanceof JSONObject) {
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, th, (JSONObject) obj);
                                } else if (obj instanceof JSONArray) {
                                    AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, th, (JSONArray) obj);
                                } else if (obj instanceof String) {
                                    AnonymousClass2 anonymousClass24 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, (String) obj, th);
                                } else {
                                    AnonymousClass2 anonymousClass25 = AnonymousClass2.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, new JSONException("Unexpected response type ".concat(parseResponse.getClass().getName())), (JSONObject) null);
                                }
                            }
                        });
                    } catch (JSONException e3) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                JsonHttpResponseHandler.this.onFailure(i2, headerArr, e3, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                new Thread(runnable).start();
                return;
            } else {
                runnable.run();
                return;
            }
        }
        AsyncHttpClient.log.v(LOG_TAG, "response body is null, calling onFailure(Throwable, JSONObject)");
        onFailure(i2, headerArr, th, (JSONObject) null);
    }

    @Override // com.loopj.android.http.TextHttpResponseHandler, com.loopj.android.http.AsyncHttpResponseHandler
    public final void onSuccess(final int i2, final Header[] headerArr, final byte[] bArr) {
        if (i2 != 204) {
            Runnable runnable = new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        final Object parseResponse = JsonHttpResponseHandler.this.parseResponse(bArr);
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!JsonHttpResponseHandler.this.useRFC5179CompatibilityMode && parseResponse == null) {
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i2, headerArr, (String) null);
                                    return;
                                }
                                Object obj = parseResponse;
                                if (obj instanceof JSONObject) {
                                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i2, headerArr, (JSONObject) obj);
                                    return;
                                }
                                if (obj instanceof JSONArray) {
                                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i2, headerArr, (JSONArray) obj);
                                } else if (!(obj instanceof String)) {
                                    AnonymousClass1 anonymousClass14 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, new JSONException("Unexpected response type ".concat(parseResponse.getClass().getName())), (JSONObject) null);
                                } else if (JsonHttpResponseHandler.this.useRFC5179CompatibilityMode) {
                                    AnonymousClass1 anonymousClass15 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onFailure(i2, headerArr, (String) parseResponse, new JSONException("Response cannot be parsed as JSON data"));
                                } else {
                                    AnonymousClass1 anonymousClass16 = AnonymousClass1.this;
                                    JsonHttpResponseHandler.this.onSuccess(i2, headerArr, (String) parseResponse);
                                }
                            }
                        });
                    } catch (JSONException e3) {
                        JsonHttpResponseHandler.this.postRunnable(new Runnable() { // from class: com.loopj.android.http.JsonHttpResponseHandler.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                JsonHttpResponseHandler.this.onFailure(i2, headerArr, e3, (JSONObject) null);
                            }
                        });
                    }
                }
            };
            if (!getUseSynchronousMode() && !getUsePoolThread()) {
                new Thread(runnable).start();
                return;
            } else {
                runnable.run();
                return;
            }
        }
        onSuccess(i2, headerArr, new JSONObject());
    }

    public JsonHttpResponseHandler(boolean z6) {
        super("UTF-8");
        this.useRFC5179CompatibilityMode = z6;
    }

    public JsonHttpResponseHandler(String str, boolean z6) {
        super(str);
        this.useRFC5179CompatibilityMode = z6;
    }
}
