.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-void
.end method

.method public constructor <init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 4
    iput-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimeParseContext;->startOptional()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 10
    .line 11
    array-length v2, v0

    .line 12
    move v4, p3

    .line 13
    move v3, v1

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    aget-object v5, v0, v3

    .line 17
    .line 18
    invoke-interface {v5, p1, p2, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lorg/threeten/bp/format/DateTimeParseContext;->endOptional(Z)V

    .line 25
    .line 26
    .line 27
    return p3

    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/DateTimeParseContext;->endOptional(Z)V

    .line 33
    .line 34
    .line 35
    return v4

    .line 36
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 37
    .line 38
    array-length v2, v0

    .line 39
    :goto_1
    if-ge v1, v2, :cond_4

    .line 40
    .line 41
    aget-object v3, v0, v1

    .line 42
    .line 43
    invoke-interface {v3, p1, p2, p3}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-gez p3, :cond_3

    .line 48
    .line 49
    return p3

    .line 50
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    return p3
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->startOptional()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    if-ge v3, v2, :cond_3

    .line 18
    .line 19
    aget-object v5, v1, v3

    .line 20
    .line 21
    invoke-interface {v5, p1, p2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    iget-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return v4

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-boolean p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    .line 48
    .line 49
    .line 50
    :cond_4
    return v4

    .line 51
    :goto_1
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {p1}, Lorg/threeten/bp/format/DateTimePrintContext;->endOptional()V

    .line 56
    .line 57
    .line 58
    :cond_5
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "["

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "("

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 23
    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_1

    .line 27
    .line 28
    aget-object v4, v1, v3

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-boolean v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v1, "]"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const-string v1, ")"

    .line 44
    .line 45
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public withOptional(Z)Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
