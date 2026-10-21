.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method public constructor <init>(Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 5
    .line 6
    iput p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 7
    .line 8
    iput-char p3, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isStrict()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->isCaseSensitive()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt p3, v2, :cond_6

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne p3, v2, :cond_0

    .line 20
    .line 21
    not-int p1, p3

    .line 22
    return p1

    .line 23
    :cond_0
    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 24
    .line 25
    add-int/2addr v2, p3

    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-le v2, v3, :cond_2

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    not-int p1, p3

    .line 35
    return p1

    .line 36
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    :cond_2
    move v3, p3

    .line 41
    :goto_0
    if-ge v3, v2, :cond_4

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-char v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 50
    .line 51
    if-ne v4, v5, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget-char v5, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 59
    .line 60
    invoke-virtual {p1, v4, v5}, Lorg/threeten/bp/format/DateTimeParseContext;->charEquals(CC)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v1, 0x0

    .line 70
    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 75
    .line 76
    invoke-interface {v1, p1, p2, v3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    add-int/2addr p3, v3

    .line 85
    not-int p1, p3

    .line 86
    :cond_5
    return p1

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 6
    .line 7
    invoke-interface {v1, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-int/2addr p1, v0

    .line 20
    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 21
    .line 22
    if-gt p1, v2, :cond_2

    .line 23
    .line 24
    :goto_0
    iget v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 25
    .line 26
    sub-int/2addr v2, p1

    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    iget-char v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 30
    .line 31
    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    new-instance p2, Lorg/threeten/bp/DateTimeException;

    .line 40
    .line 41
    const-string v0, "Cannot print as output of "

    .line 42
    .line 43
    const-string v1, " characters exceeds pad width of "

    .line 44
    .line 45
    invoke-static {p1, v0, v1}, LA/i;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Pad("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ","

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-char v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 24
    .line 25
    const/16 v2, 0x20

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const-string v1, ")"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, ",\'"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-char v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, "\')"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
