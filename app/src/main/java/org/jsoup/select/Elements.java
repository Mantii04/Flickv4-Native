package org.jsoup.select;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.b;

/* loaded from: classes2.dex */
public class Elements extends ArrayList<b> {
    public Elements() {
    }

    public b first() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public b last() {
        if (isEmpty()) {
            return null;
        }
        return get(size() - 1);
    }

    public String outerHtml() {
        StringBuilder sb = new StringBuilder();
        Iterator<b> it = iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (sb.length() != 0) {
                sb.append(StringUtils.LF);
            }
            sb.append(next.outerHtml());
        }
        return sb.toString();
    }

    public String text() {
        StringBuilder sb = new StringBuilder();
        Iterator<b> it = iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (sb.length() != 0) {
                sb.append(StringUtils.SPACE);
            }
            sb.append(next.text());
        }
        return sb.toString();
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return outerHtml();
    }

    public Elements(int i2) {
        super(i2);
    }

    @Override // java.util.ArrayList
    public Elements clone() {
        Elements elements = new Elements(size());
        Iterator<b> it = iterator();
        while (it.hasNext()) {
            elements.add(it.next().mo102clone());
        }
        return elements;
    }

    public Elements(List<b> list) {
        super(list);
    }
}
