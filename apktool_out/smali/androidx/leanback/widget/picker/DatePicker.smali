.class public Landroidx/leanback/widget/picker/DatePicker;
.super Lk0/e;
.source "SourceFile"


# static fields
.field public static final L:[I


# instance fields
.field public A:Lk0/f;

.field public B:Lk0/f;

.field public C:I

.field public D:I

.field public E:I

.field public final F:Ljava/text/SimpleDateFormat;

.field public final G:Lk0/g;

.field public final H:Ljava/util/Calendar;

.field public final I:Ljava/util/Calendar;

.field public final J:Ljava/util/Calendar;

.field public final K:Ljava/util/Calendar;

.field public y:Ljava/lang/String;

.field public z:Lk0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x5

    .line 4
    filled-new-array {v2, v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/picker/DatePicker;->L:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Landroidx/leanback/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lk0/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Ljava/text/SimpleDateFormat;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    invoke-static {p3, v0}, Lk0/h;->getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Lk0/g;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    iget-object p3, p3, Lk0/g;->a:Ljava/util/Locale;

    invoke-static {v0, p3}, Lk0/h;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 8
    iget-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    iget-object v0, v0, Lk0/g;->a:Ljava/util/Locale;

    invoke-static {p3, v0}, Lk0/h;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 9
    iget-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    iget-object v0, v0, Lk0/g;->a:Ljava/util/Locale;

    invoke-static {p3, v0}, Lk0/h;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 10
    iget-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    iget-object v0, v0, Lk0/g;->a:Ljava/util/Locale;

    invoke-static {p3, v0}, Lk0/h;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 11
    iget-object p3, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    if-eqz p3, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    iget-object v0, v0, Lk0/g;->b:[Ljava/lang/String;

    invoke-virtual {p3, v0}, Lk0/f;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 13
    iget p3, p0, Landroidx/leanback/widget/picker/DatePicker;->C:I

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    invoke-virtual {p0, p3, v0}, Lk0/e;->setColumnAt(ILk0/f;)V

    .line 14
    :cond_0
    sget-object p3, Landroidx/leanback/R$styleable;->lbDatePicker:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 15
    sget-object v3, Landroidx/leanback/R$styleable;->lbDatePicker:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, LM/p0;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 16
    :try_start_0
    sget p1, Landroidx/leanback/R$styleable;->lbDatePicker_android_minDate:I

    invoke-virtual {v5, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget p2, Landroidx/leanback/R$styleable;->lbDatePicker_android_maxDate:I

    invoke-virtual {v5, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    sget p3, Landroidx/leanback/R$styleable;->lbDatePicker_datePickerFormat:I

    .line 19
    invoke-virtual {v5, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    iget-object v0, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x76c

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 23
    iget-object v0, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/picker/DatePicker;->f(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 24
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v5, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v5, v4}, Ljava/util/Calendar;->set(III)V

    .line 26
    :cond_2
    :goto_0
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    iget-object v0, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x834

    if-nez p1, :cond_3

    .line 29
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/picker/DatePicker;->f(Ljava/util/Calendar;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 30
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v5, v4}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 31
    :cond_3
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v5, v4}, Ljava/util/Calendar;->set(III)V

    .line 32
    :cond_4
    :goto_1
    iget-object p1, v1, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    iget-object p2, v1, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 33
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    new-instance p3, Ljava/lang/String;

    .line 35
    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    .line 36
    :cond_5
    invoke-virtual {p0, p3}, Landroidx/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 37
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    throw p1
.end method


# virtual methods
.method public final f(Ljava/util/Calendar;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->F:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "Date: "

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, " not in format: MM/dd/yyyy"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "DatePicker"

    .line 32
    .line 33
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public getDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final onColumnValueChanged(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lk0/e;->getColumnAt(I)Lk0/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lk0/f;->getCurrentValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->D:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x5

    .line 25
    if-ne p1, v1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 28
    .line 29
    sub-int/2addr p2, v0

    .line 30
    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->add(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->C:I

    .line 35
    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 39
    .line 40
    sub-int/2addr p2, v0

    .line 41
    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->E:I

    .line 46
    .line 47
    if-ne p1, v1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 50
    .line 51
    sub-int/2addr p2, v0

    .line 52
    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->add(II)V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setDate(IIIZ)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public setDate(IIIZ)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 9
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    :cond_3
    :goto_1
    new-instance p1, Lk0/a;

    invoke-direct {p1, p0, p4}, Lk0/a;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/leanback/widget/picker/DatePicker;->setDate(IIIZ)V

    return-void
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/16 v2, 0x4d

    .line 5
    .line 6
    const/16 v4, 0x44

    .line 7
    .line 8
    iget-object v5, v0, Landroidx/leanback/widget/picker/DatePicker;->G:Lk0/g;

    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v7

    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    new-instance v7, Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([C)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object/from16 v7, p1

    .line 31
    .line 32
    :goto_0
    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iput-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->y:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v8, v5, Lk0/g;->a:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-static {v8, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    const-string v8, "MM/dd/yyyy"

    .line 56
    .line 57
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    new-array v11, v1, [C

    .line 68
    .line 69
    fill-array-data v11, :array_0

    .line 70
    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    move v13, v12

    .line 74
    move v14, v13

    .line 75
    move v15, v14

    .line 76
    const/16 v16, 0x1

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ge v13, v6, :cond_a

    .line 83
    .line 84
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/16 v3, 0x20

    .line 89
    .line 90
    if-ne v6, v3, :cond_3

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_3
    const/16 v3, 0x27

    .line 94
    .line 95
    if-ne v6, v3, :cond_5

    .line 96
    .line 97
    if-nez v14, :cond_4

    .line 98
    .line 99
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    .line 101
    .line 102
    move/from16 v14, v16

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    move v14, v12

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    if-eqz v14, :cond_6

    .line 108
    .line 109
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move v3, v12

    .line 114
    :goto_2
    if-ge v3, v1, :cond_8

    .line 115
    .line 116
    aget-char v1, v11, v3

    .line 117
    .line 118
    if-ne v6, v1, :cond_7

    .line 119
    .line 120
    if-eq v6, v15, :cond_9

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    const/4 v1, 0x6

    .line 136
    goto :goto_2

    .line 137
    :cond_8
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_3
    move v15, v6

    .line 141
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 142
    .line 143
    const/4 v1, 0x6

    .line 144
    goto :goto_1

    .line 145
    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    if-ne v1, v3, :cond_12

    .line 163
    .line 164
    invoke-virtual {v0, v9}, Lk0/e;->setSeparators(Ljava/util/List;)V

    .line 165
    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Lk0/f;

    .line 169
    .line 170
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    .line 171
    .line 172
    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->B:Lk0/f;

    .line 173
    .line 174
    const/4 v1, -0x1

    .line 175
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->C:I

    .line 176
    .line 177
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->D:I

    .line 178
    .line 179
    iput v1, v0, Landroidx/leanback/widget/picker/DatePicker;->E:I

    .line 180
    .line 181
    iget-object v1, v5, Lk0/g;->a:Ljava/util/Locale;

    .line 182
    .line 183
    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v3, Ljava/util/ArrayList;

    .line 188
    .line 189
    const/4 v6, 0x3

    .line 190
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .line 192
    .line 193
    move v6, v12

    .line 194
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    if-ge v6, v7, :cond_11

    .line 199
    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    const-string v8, "datePicker format error"

    .line 205
    .line 206
    if-eq v7, v4, :cond_f

    .line 207
    .line 208
    if-eq v7, v2, :cond_d

    .line 209
    .line 210
    const/16 v9, 0x59

    .line 211
    .line 212
    if-ne v7, v9, :cond_c

    .line 213
    .line 214
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->B:Lk0/f;

    .line 215
    .line 216
    if-nez v7, :cond_b

    .line 217
    .line 218
    new-instance v7, Lk0/f;

    .line 219
    .line 220
    invoke-direct {v7}, Lk0/f;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->B:Lk0/f;

    .line 224
    .line 225
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    iput v6, v0, Landroidx/leanback/widget/picker/DatePicker;->E:I

    .line 229
    .line 230
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->B:Lk0/f;

    .line 231
    .line 232
    const-string v8, "%d"

    .line 233
    .line 234
    invoke-virtual {v7, v8}, Lk0/f;->setLabelFormat(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 239
    .line 240
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v1

    .line 244
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 245
    .line 246
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v1

    .line 250
    :cond_d
    const/16 v9, 0x59

    .line 251
    .line 252
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    .line 253
    .line 254
    if-nez v7, :cond_e

    .line 255
    .line 256
    new-instance v7, Lk0/f;

    .line 257
    .line 258
    invoke-direct {v7}, Lk0/f;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    .line 262
    .line 263
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->z:Lk0/f;

    .line 267
    .line 268
    iget-object v8, v5, Lk0/g;->b:[Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v7, v8}, Lk0/f;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    iput v6, v0, Landroidx/leanback/widget/picker/DatePicker;->C:I

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v1

    .line 282
    :cond_f
    const/16 v9, 0x59

    .line 283
    .line 284
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Lk0/f;

    .line 285
    .line 286
    if-nez v7, :cond_10

    .line 287
    .line 288
    new-instance v7, Lk0/f;

    .line 289
    .line 290
    invoke-direct {v7}, Lk0/f;-><init>()V

    .line 291
    .line 292
    .line 293
    iput-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Lk0/f;

    .line 294
    .line 295
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    iget-object v7, v0, Landroidx/leanback/widget/picker/DatePicker;->A:Lk0/f;

    .line 299
    .line 300
    const-string v8, "%02d"

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Lk0/f;->setLabelFormat(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iput v6, v0, Landroidx/leanback/widget/picker/DatePicker;->D:I

    .line 306
    .line 307
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw v1

    .line 316
    :cond_11
    invoke-virtual {v0, v3}, Lk0/e;->setColumns(Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lk0/a;

    .line 320
    .line 321
    invoke-direct {v1, v0, v12}, Lk0/a;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 329
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v3, "Separators size: "

    .line 333
    .line 334
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    const-string v3, " must equal the size of datePickerFormat: "

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v3, " + 1"

    .line 357
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    throw v1

    .line 369
    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->I:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance p1, Lk0/a;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-direct {p1, p0, p2}, Lk0/a;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->K:Ljava/util/Calendar;

    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->J:Ljava/util/Calendar;

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->H:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance p1, Lk0/a;

    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-direct {p1, p0, p2}, Lk0/a;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
