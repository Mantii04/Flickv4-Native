package com.fasterxml.jackson.databind.util;

import A.i;

/* loaded from: classes.dex */
public abstract class PrimitiveArrayBuilder<T> {
    static final int INITIAL_CHUNK_SIZE = 12;
    static final int MAX_CHUNK_SIZE = 262144;
    static final int SMALL_CHUNK_SIZE = 16384;
    protected Node<T> _bufferHead;
    protected Node<T> _bufferTail;
    protected int _bufferedEntryCount;
    protected T _freeBuffer;

    public static final class Node<T> {
        final T _data;
        final int _dataLength;
        Node<T> _next;

        public Node(T t6, int i2) {
            this._data = t6;
            this._dataLength = i2;
        }

        public int copyData(T t6, int i2) {
            System.arraycopy(this._data, 0, t6, i2, this._dataLength);
            return i2 + this._dataLength;
        }

        public T getData() {
            return this._data;
        }

        public void linkNext(Node<T> node) {
            if (this._next != null) {
                throw new IllegalStateException();
            }
            this._next = node;
        }

        public Node<T> next() {
            return this._next;
        }
    }

    public abstract T _constructArray(int i2);

    public void _reset() {
        Node<T> node = this._bufferTail;
        if (node != null) {
            this._freeBuffer = node.getData();
        }
        this._bufferTail = null;
        this._bufferHead = null;
        this._bufferedEntryCount = 0;
    }

    public final T appendCompletedChunk(T t6, int i2) {
        Node<T> node = new Node<>(t6, i2);
        if (this._bufferHead == null) {
            this._bufferTail = node;
            this._bufferHead = node;
        } else {
            this._bufferTail.linkNext(node);
            this._bufferTail = node;
        }
        this._bufferedEntryCount += i2;
        return _constructArray(i2 < 16384 ? i2 + i2 : i2 + (i2 >> 2));
    }

    public int bufferedSize() {
        return this._bufferedEntryCount;
    }

    public T completeAndClearBuffer(T t6, int i2) {
        int i7 = this._bufferedEntryCount + i2;
        T _constructArray = _constructArray(i7);
        int i8 = 0;
        for (Node<T> node = this._bufferHead; node != null; node = node.next()) {
            i8 = node.copyData(_constructArray, i8);
        }
        System.arraycopy(t6, 0, _constructArray, i8, i2);
        int i9 = i8 + i2;
        if (i9 == i7) {
            return _constructArray;
        }
        throw new IllegalStateException(i.e(i7, i9, "Should have gotten ", " entries, got "));
    }

    public T resetAndStart() {
        _reset();
        T t6 = this._freeBuffer;
        return t6 == null ? _constructArray(12) : t6;
    }
}
