package k6;

import java.io.Reader;
import java.io.StringReader;
import org.jsoup.parser.ParseErrorList;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final org.jsoup.parser.c f17349a;

    /* renamed from: b, reason: collision with root package name */
    public ParseErrorList f17350b;

    /* renamed from: c, reason: collision with root package name */
    public final d f17351c;

    public e(org.jsoup.parser.c cVar) {
        this.f17349a = cVar;
        this.f17351c = cVar.a();
    }

    public static e htmlParser() {
        return new e(new org.jsoup.parser.a());
    }

    public static j6.h parse(String str, String str2) {
        org.jsoup.parser.a aVar = new org.jsoup.parser.a();
        aVar.initialiseParse(new StringReader(str), str2, ParseErrorList.noTracking(), d.f17345c);
        aVar.runParser();
        return aVar.f19359c;
    }

    public static String unescapeEntities(String str, boolean z6) {
        org.jsoup.parser.b bVar = new org.jsoup.parser.b(new a(str), ParseErrorList.noTracking());
        StringBuilder stringBuilder = h6.j.stringBuilder();
        while (true) {
            a aVar = bVar.f19340a;
            if (aVar.isEmpty()) {
                return stringBuilder.toString();
            }
            stringBuilder.append(aVar.consumeTo('&'));
            if (aVar.h('&')) {
                aVar.c();
                int[] c7 = bVar.c(null, z6);
                if (c7 == null || c7.length == 0) {
                    stringBuilder.append('&');
                } else {
                    stringBuilder.appendCodePoint(c7[0]);
                    if (c7.length == 2) {
                        stringBuilder.appendCodePoint(c7[1]);
                    }
                }
            }
        }
    }

    public static e xmlParser() {
        return new e(new q());
    }

    public boolean isTrackErrors() {
        return false;
    }

    public j6.h parseInput(String str, String str2) {
        this.f17350b = isTrackErrors() ? ParseErrorList.tracking(0) : ParseErrorList.noTracking();
        StringReader stringReader = new StringReader(str);
        ParseErrorList parseErrorList = this.f17350b;
        d dVar = this.f17351c;
        org.jsoup.parser.c cVar = this.f17349a;
        cVar.initialiseParse(stringReader, str2, parseErrorList, dVar);
        cVar.runParser();
        return cVar.f19359c;
    }

    public j6.h parseInput(Reader reader, String str) {
        ParseErrorList tracking = isTrackErrors() ? ParseErrorList.tracking(0) : ParseErrorList.noTracking();
        this.f17350b = tracking;
        org.jsoup.parser.c cVar = this.f17349a;
        cVar.initialiseParse(reader, str, tracking, this.f17351c);
        cVar.runParser();
        return cVar.f19359c;
    }
}
