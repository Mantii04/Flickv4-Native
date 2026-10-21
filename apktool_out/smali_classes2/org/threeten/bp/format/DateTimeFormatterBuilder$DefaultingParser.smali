.class Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultingParser"
.end annotation


# instance fields
.field private final field:Lorg/threeten/bp/temporal/TemporalField;

.field private final value:J


# direct methods
.method public constructor <init>(Lorg/threeten/bp/temporal/TemporalField;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;->value:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public parse(Lorg/threeten/bp/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    iget-object p2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/threeten/bp/format/DateTimeParseContext;->getParsed(Lorg/threeten/bp/temporal/TemporalField;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;->field:Lorg/threeten/bp/temporal/TemporalField;

    .line 10
    .line 11
    iget-wide v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$DefaultingParser;->value:J

    .line 12
    .line 13
    move v5, p3

    .line 14
    move-object v0, p1

    .line 15
    move v4, p3

    .line 16
    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/DateTimeParseContext;->setParsedField(Lorg/threeten/bp/temporal/TemporalField;JII)I

    .line 17
    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    move v4, p3

    .line 21
    return v4
.end method

.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
