package flix.com.vision.processors.english;

import android.util.Log;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringEscapeUtils;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16079b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f16080e;

    public /* synthetic */ d(Object obj, int i2) {
        this.f16079b = i2;
        this.f16080e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16079b) {
            case 0:
                m mVar = (m) this.f16080e;
                mVar.c(mVar.ids.pop().intValue());
                return;
            case 1:
                final q qVar = ((p) this.f16080e).f16108a;
                WebView webView = qVar.f16113e;
                if (webView == null) {
                    Log.e("RidoProcessor", "WebView was nullified before extraction could start.");
                    return;
                } else {
                    final int i2 = 0;
                    webView.evaluateJavascript("(function() {   var el = document.getElementById('serverselector');  return el ? el.innerHTML : null;})();", new ValueCallback() { // from class: flix.com.vision.processors.english.o
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            org.jsoup.nodes.b first;
                            String str = (String) obj;
                            switch (i2) {
                                case 0:
                                    q qVar2 = (q) qVar;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                                            unescapeJava = A.i.d(1, 1, unescapeJava);
                                        }
                                        try {
                                            new Thread(new n(qVar2, unescapeJava, 1)).start();
                                            break;
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 1:
                                    s sVar = (s) qVar;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava2 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava2.startsWith("\"") && unescapeJava2.endsWith("\"")) {
                                            unescapeJava2 = A.i.d(1, 1, unescapeJava2);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(5, sVar, JsonUtils.parse(unescapeJava2).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 2:
                                    v vVar = (v) qVar;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava3 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava3.startsWith("\"") && unescapeJava3.endsWith("\"")) {
                                            unescapeJava3 = A.i.d(1, 1, unescapeJava3);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(8, vVar, JsonUtils.parse(unescapeJava3).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e8) {
                                            e8.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 3:
                                    y yVar = (y) qVar;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava4 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava4.startsWith("\"") && unescapeJava4.endsWith("\"")) {
                                            unescapeJava4 = A.i.d(1, 1, unescapeJava4);
                                        }
                                        try {
                                            new Thread(new w(yVar, unescapeJava4, 1)).start();
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    B b7 = (B) qVar;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava5 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava5.startsWith("\"") && unescapeJava5.endsWith("\"")) {
                                            unescapeJava5 = A.i.d(1, 1, unescapeJava5);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        org.jsoup.nodes.b elementById = g6.e.parse(unescapeJava5).getElementById(FirebaseAnalytics.Param.CONTENT);
                                        if (elementById == null) {
                                            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
                                        } else {
                                            Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
                                            while (it.hasNext()) {
                                                org.jsoup.nodes.b next = it.next();
                                                org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
                                                if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(b7.f16061b.getTitle())) {
                                                    String attr = next.attr("href");
                                                    if (!attr.isEmpty()) {
                                                        arrayList.add(attr);
                                                    }
                                                }
                                            }
                                        }
                                        if (arrayList.size() != 0) {
                                            new Thread(new z(b7, ((String) arrayList.get(0)) + "/season-" + b7.f16064e, 1)).start();
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
            case 2:
                s sVar = (s) this.f16080e;
                WebView webView2 = sVar.f16115a;
                if (webView2 != null) {
                    webView2.destroy();
                    sVar.f16115a = null;
                    return;
                }
                return;
            case 3:
                final s sVar2 = ((r) this.f16080e).f16114a;
                WebView webView3 = sVar2.f16115a;
                if (webView3 == null) {
                    Log.e("RidoMoviesProcessor", "WebView was nullified before extraction.");
                    return;
                } else {
                    final int i7 = 1;
                    webView3.evaluateJavascript("(function() {   var el = document.getElementById('detailConfig');  return el ? el.getAttribute('data-videos') : null;})();", new ValueCallback() { // from class: flix.com.vision.processors.english.o
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            org.jsoup.nodes.b first;
                            String str = (String) obj;
                            switch (i7) {
                                case 0:
                                    q qVar2 = (q) sVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                                            unescapeJava = A.i.d(1, 1, unescapeJava);
                                        }
                                        try {
                                            new Thread(new n(qVar2, unescapeJava, 1)).start();
                                            break;
                                        } catch (Exception e3) {
                                            e3.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 1:
                                    s sVar3 = (s) sVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava2 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava2.startsWith("\"") && unescapeJava2.endsWith("\"")) {
                                            unescapeJava2 = A.i.d(1, 1, unescapeJava2);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(5, sVar3, JsonUtils.parse(unescapeJava2).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 2:
                                    v vVar = (v) sVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava3 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava3.startsWith("\"") && unescapeJava3.endsWith("\"")) {
                                            unescapeJava3 = A.i.d(1, 1, unescapeJava3);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(8, vVar, JsonUtils.parse(unescapeJava3).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e8) {
                                            e8.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 3:
                                    y yVar = (y) sVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava4 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava4.startsWith("\"") && unescapeJava4.endsWith("\"")) {
                                            unescapeJava4 = A.i.d(1, 1, unescapeJava4);
                                        }
                                        try {
                                            new Thread(new w(yVar, unescapeJava4, 1)).start();
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    B b7 = (B) sVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava5 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava5.startsWith("\"") && unescapeJava5.endsWith("\"")) {
                                            unescapeJava5 = A.i.d(1, 1, unescapeJava5);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        org.jsoup.nodes.b elementById = g6.e.parse(unescapeJava5).getElementById(FirebaseAnalytics.Param.CONTENT);
                                        if (elementById == null) {
                                            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
                                        } else {
                                            Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
                                            while (it.hasNext()) {
                                                org.jsoup.nodes.b next = it.next();
                                                org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
                                                if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(b7.f16061b.getTitle())) {
                                                    String attr = next.attr("href");
                                                    if (!attr.isEmpty()) {
                                                        arrayList.add(attr);
                                                    }
                                                }
                                            }
                                        }
                                        if (arrayList.size() != 0) {
                                            new Thread(new z(b7, ((String) arrayList.get(0)) + "/season-" + b7.f16064e, 1)).start();
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
            case 4:
                v vVar = (v) this.f16080e;
                WebView webView4 = vVar.f16122a;
                if (webView4 != null) {
                    try {
                        try {
                            if (webView4.getParent() != null) {
                                ((ViewGroup) vVar.f16122a.getParent()).removeView(vVar.f16122a);
                            }
                            vVar.f16122a.destroy();
                        } catch (Exception e3) {
                            Log.e("RidoProcessor", "Error destroying webView", e3);
                        }
                        vVar.f16122a = null;
                        return;
                    } catch (Throwable th) {
                        vVar.f16122a = null;
                        throw th;
                    }
                }
                return;
            case 5:
                final v vVar2 = ((u) this.f16080e).f16121a;
                WebView webView5 = vVar2.f16122a;
                if (webView5 == null) {
                    Log.e("RidoProcessor", "WebView was nullified before extraction could start.");
                    return;
                } else {
                    final int i8 = 2;
                    webView5.evaluateJavascript("(function() {   var el = document.getElementById('detailConfig');  return el ? el.getAttribute('data-videos') : null;})();", new ValueCallback() { // from class: flix.com.vision.processors.english.o
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            org.jsoup.nodes.b first;
                            String str = (String) obj;
                            switch (i8) {
                                case 0:
                                    q qVar2 = (q) vVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                                            unescapeJava = A.i.d(1, 1, unescapeJava);
                                        }
                                        try {
                                            new Thread(new n(qVar2, unescapeJava, 1)).start();
                                            break;
                                        } catch (Exception e32) {
                                            e32.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 1:
                                    s sVar3 = (s) vVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava2 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava2.startsWith("\"") && unescapeJava2.endsWith("\"")) {
                                            unescapeJava2 = A.i.d(1, 1, unescapeJava2);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(5, sVar3, JsonUtils.parse(unescapeJava2).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 2:
                                    v vVar3 = (v) vVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava3 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava3.startsWith("\"") && unescapeJava3.endsWith("\"")) {
                                            unescapeJava3 = A.i.d(1, 1, unescapeJava3);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(8, vVar3, JsonUtils.parse(unescapeJava3).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e8) {
                                            e8.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 3:
                                    y yVar = (y) vVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava4 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava4.startsWith("\"") && unescapeJava4.endsWith("\"")) {
                                            unescapeJava4 = A.i.d(1, 1, unescapeJava4);
                                        }
                                        try {
                                            new Thread(new w(yVar, unescapeJava4, 1)).start();
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    B b7 = (B) vVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava5 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava5.startsWith("\"") && unescapeJava5.endsWith("\"")) {
                                            unescapeJava5 = A.i.d(1, 1, unescapeJava5);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        org.jsoup.nodes.b elementById = g6.e.parse(unescapeJava5).getElementById(FirebaseAnalytics.Param.CONTENT);
                                        if (elementById == null) {
                                            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
                                        } else {
                                            Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
                                            while (it.hasNext()) {
                                                org.jsoup.nodes.b next = it.next();
                                                org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
                                                if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(b7.f16061b.getTitle())) {
                                                    String attr = next.attr("href");
                                                    if (!attr.isEmpty()) {
                                                        arrayList.add(attr);
                                                    }
                                                }
                                            }
                                        }
                                        if (arrayList.size() != 0) {
                                            new Thread(new z(b7, ((String) arrayList.get(0)) + "/season-" + b7.f16064e, 1)).start();
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
            case 6:
                y yVar = (y) this.f16080e;
                WebView webView6 = yVar.f16130b;
                if (webView6 != null) {
                    webView6.destroy();
                    yVar.f16130b = null;
                    return;
                }
                return;
            case 7:
                final y yVar2 = ((x) this.f16080e).f16128a;
                WebView webView7 = yVar2.f16130b;
                if (webView7 == null) {
                    Log.e("RidoMoviesProcessor", "WebView was nullified before extraction.");
                    return;
                } else {
                    final int i9 = 3;
                    webView7.evaluateJavascript("(function() {   return document.documentElement.outerHTML;})();", new ValueCallback() { // from class: flix.com.vision.processors.english.o
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            org.jsoup.nodes.b first;
                            String str = (String) obj;
                            switch (i9) {
                                case 0:
                                    q qVar2 = (q) yVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                                            unescapeJava = A.i.d(1, 1, unescapeJava);
                                        }
                                        try {
                                            new Thread(new n(qVar2, unescapeJava, 1)).start();
                                            break;
                                        } catch (Exception e32) {
                                            e32.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 1:
                                    s sVar3 = (s) yVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava2 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava2.startsWith("\"") && unescapeJava2.endsWith("\"")) {
                                            unescapeJava2 = A.i.d(1, 1, unescapeJava2);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(5, sVar3, JsonUtils.parse(unescapeJava2).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 2:
                                    v vVar3 = (v) yVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava3 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava3.startsWith("\"") && unescapeJava3.endsWith("\"")) {
                                            unescapeJava3 = A.i.d(1, 1, unescapeJava3);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(8, vVar3, JsonUtils.parse(unescapeJava3).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e8) {
                                            e8.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 3:
                                    y yVar3 = (y) yVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava4 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava4.startsWith("\"") && unescapeJava4.endsWith("\"")) {
                                            unescapeJava4 = A.i.d(1, 1, unescapeJava4);
                                        }
                                        try {
                                            new Thread(new w(yVar3, unescapeJava4, 1)).start();
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    B b7 = (B) yVar2;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava5 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava5.startsWith("\"") && unescapeJava5.endsWith("\"")) {
                                            unescapeJava5 = A.i.d(1, 1, unescapeJava5);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        org.jsoup.nodes.b elementById = g6.e.parse(unescapeJava5).getElementById(FirebaseAnalytics.Param.CONTENT);
                                        if (elementById == null) {
                                            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
                                        } else {
                                            Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
                                            while (it.hasNext()) {
                                                org.jsoup.nodes.b next = it.next();
                                                org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
                                                if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(b7.f16061b.getTitle())) {
                                                    String attr = next.attr("href");
                                                    if (!attr.isEmpty()) {
                                                        arrayList.add(attr);
                                                    }
                                                }
                                            }
                                        }
                                        if (arrayList.size() != 0) {
                                            new Thread(new z(b7, ((String) arrayList.get(0)) + "/season-" + b7.f16064e, 1)).start();
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
            default:
                final B b7 = ((A) this.f16080e).f16059a;
                WebView webView8 = b7.f16060a;
                if (webView8 == null) {
                    Log.e("RidoMoviesProcessor", "WebView was nullified before extraction.");
                    return;
                } else {
                    final int i10 = 4;
                    webView8.evaluateJavascript("(function() {   return document.documentElement.outerHTML;})();", new ValueCallback() { // from class: flix.com.vision.processors.english.o
                        @Override // android.webkit.ValueCallback
                        public final void onReceiveValue(Object obj) {
                            org.jsoup.nodes.b first;
                            String str = (String) obj;
                            switch (i10) {
                                case 0:
                                    q qVar2 = (q) b7;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava.startsWith("\"") && unescapeJava.endsWith("\"")) {
                                            unescapeJava = A.i.d(1, 1, unescapeJava);
                                        }
                                        try {
                                            new Thread(new n(qVar2, unescapeJava, 1)).start();
                                            break;
                                        } catch (Exception e32) {
                                            e32.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 1:
                                    s sVar3 = (s) b7;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava2 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava2.startsWith("\"") && unescapeJava2.endsWith("\"")) {
                                            unescapeJava2 = A.i.d(1, 1, unescapeJava2);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(5, sVar3, JsonUtils.parse(unescapeJava2).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e7) {
                                            e7.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 2:
                                    v vVar3 = (v) b7;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava3 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava3.startsWith("\"") && unescapeJava3.endsWith("\"")) {
                                            unescapeJava3 = A.i.d(1, 1, unescapeJava3);
                                        }
                                        try {
                                            new Thread(new flix.com.vision.activities.leanback.fragment.a(8, vVar3, JsonUtils.parse(unescapeJava3).getAsJsonArray())).start();
                                            break;
                                        } catch (Exception e8) {
                                            e8.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                case 3:
                                    y yVar3 = (y) b7;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava4 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava4.startsWith("\"") && unescapeJava4.endsWith("\"")) {
                                            unescapeJava4 = A.i.d(1, 1, unescapeJava4);
                                        }
                                        try {
                                            new Thread(new w(yVar3, unescapeJava4, 1)).start();
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                    break;
                                default:
                                    B b72 = (B) b7;
                                    if (str != null && !str.equals("null") && !str.isEmpty()) {
                                        String unescapeJava5 = StringEscapeUtils.unescapeJava(str);
                                        if (unescapeJava5.startsWith("\"") && unescapeJava5.endsWith("\"")) {
                                            unescapeJava5 = A.i.d(1, 1, unescapeJava5);
                                        }
                                        ArrayList arrayList = new ArrayList();
                                        org.jsoup.nodes.b elementById = g6.e.parse(unescapeJava5).getElementById(FirebaseAnalytics.Param.CONTENT);
                                        if (elementById == null) {
                                            Log.e("StreamingCommunity", "Element with ID 'content' not found in HTML");
                                        } else {
                                            Iterator<org.jsoup.nodes.b> it = elementById.getElementsByTag("A").iterator();
                                            while (it.hasNext()) {
                                                org.jsoup.nodes.b next = it.next();
                                                org.jsoup.nodes.b first2 = next.getElementsByTag("DIV").first();
                                                if (first2 != null && (first = first2.getElementsByTag("IMG").first()) != null && first.attr("alt") != null && first.attr("alt").equalsIgnoreCase(b72.f16061b.getTitle())) {
                                                    String attr = next.attr("href");
                                                    if (!attr.isEmpty()) {
                                                        arrayList.add(attr);
                                                    }
                                                }
                                            }
                                        }
                                        if (arrayList.size() != 0) {
                                            new Thread(new z(b72, ((String) arrayList.get(0)) + "/season-" + b72.f16064e, 1)).start();
                                            break;
                                        }
                                    }
                                    break;
                            }
                        }
                    });
                    return;
                }
        }
    }
}
