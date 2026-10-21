package cz.msebera.android.httpclient.message;

import A.i;

/* loaded from: classes2.dex */
public class ParserCursor {
    private final int lowerBound;
    private int pos;
    private final int upperBound;

    public ParserCursor(int i2, int i7) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i2 > i7) {
            throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
        }
        this.lowerBound = i2;
        this.upperBound = i7;
        this.pos = i2;
    }

    public boolean atEnd() {
        return this.pos >= this.upperBound;
    }

    public int getLowerBound() {
        return this.lowerBound;
    }

    public int getPos() {
        return this.pos;
    }

    public int getUpperBound() {
        return this.upperBound;
    }

    public String toString() {
        return "[" + Integer.toString(this.lowerBound) + '>' + Integer.toString(this.pos) + '>' + Integer.toString(this.upperBound) + ']';
    }

    public void updatePos(int i2) {
        if (i2 < this.lowerBound) {
            StringBuilder q6 = i.q(i2, "pos: ", " < lowerBound: ");
            q6.append(this.lowerBound);
            throw new IndexOutOfBoundsException(q6.toString());
        }
        if (i2 <= this.upperBound) {
            this.pos = i2;
        } else {
            StringBuilder q7 = i.q(i2, "pos: ", " > upperBound: ");
            q7.append(this.upperBound);
            throw new IndexOutOfBoundsException(q7.toString());
        }
    }
}
