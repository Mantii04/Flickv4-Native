.class public Lorg/apache/commons/lang3/BitField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    not-int v0, v0

    .line 4
    and-int/2addr p1, v0

    .line 5
    return p1
.end method

.method public clearByte(B)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-byte p1, p1

    .line 6
    return p1
.end method

.method public clearShort(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-short p1, p1

    .line 6
    return p1
.end method

.method public getRawValue(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public getShortRawValue(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-short p1, p1

    .line 6
    return p1
.end method

.method public getShortValue(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getValue(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-short p1, p1

    .line 6
    return p1
.end method

.method public getValue(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    .line 6
    .line 7
    shr-int/2addr p1, v0

    .line 8
    return p1
.end method

.method public isAllSet(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public isSet(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public set(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    return p1
.end method

.method public setBoolean(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public setByte(B)B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-byte p1, p1

    .line 6
    return p1
.end method

.method public setByteBoolean(BZ)B
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setByte(B)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearByte(B)B

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public setShort(S)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-short p1, p1

    .line 6
    return p1
.end method

.method public setShortBoolean(SZ)S
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setShort(S)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearShort(S)S

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public setShortValue(SS)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/BitField;->setValue(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-short p1, p1

    .line 6
    return p1
.end method

.method public setValue(II)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->_mask:I

    .line 2
    .line 3
    not-int v1, v0

    .line 4
    and-int/2addr p1, v1

    .line 5
    iget v1, p0, Lorg/apache/commons/lang3/BitField;->_shift_count:I

    .line 6
    .line 7
    shl-int/2addr p2, v1

    .line 8
    and-int/2addr p2, v0

    .line 9
    or-int/2addr p1, p2

    .line 10
    return p1
.end method
