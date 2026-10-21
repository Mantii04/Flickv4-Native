.class public final Lcom/google/android/material/datepicker/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:J

.field public static final g:J


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/Long;

.field public d:I

.field public e:Lcom/google/android/material/datepicker/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x76c

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/C;->b(II)Lcom/google/android/material/datepicker/C;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lcom/google/android/material/datepicker/M;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-wide v3, v0, Lcom/google/android/material/datepicker/C;->n:J

    .line 14
    .line 15
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/material/datepicker/M;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sput-wide v2, Lcom/google/android/material/datepicker/b;->f:J

    .line 27
    .line 28
    const/16 v0, 0x834

    .line 29
    .line 30
    const/16 v2, 0xb

    .line 31
    .line 32
    invoke-static {v0, v2}, Lcom/google/android/material/datepicker/C;->b(II)Lcom/google/android/material/datepicker/C;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1}, Lcom/google/android/material/datepicker/M;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-wide v2, v0, Lcom/google/android/material/datepicker/C;->n:J

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/material/datepicker/M;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    sput-wide v0, Lcom/google/android/material/datepicker/b;->g:J

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/datepicker/d;
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/datepicker/b;->e:Lcom/google/android/material/datepicker/c;

    .line 7
    .line 8
    const-string v2, "DEEP_COPY_VALIDATOR_KEY"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lcom/google/android/material/datepicker/d;

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/google/android/material/datepicker/b;->a:J

    .line 16
    .line 17
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/C;->d(J)Lcom/google/android/material/datepicker/C;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-wide v5, p0, Lcom/google/android/material/datepicker/b;->b:J

    .line 22
    .line 23
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/C;->d(J)Lcom/google/android/material/datepicker/C;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v6, v0

    .line 32
    check-cast v6, Lcom/google/android/material/datepicker/c;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/material/datepicker/b;->c:Ljava/lang/Long;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    move-object v7, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/C;->d(J)Lcom/google/android/material/datepicker/C;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    iget v8, p0, Lcom/google/android/material/datepicker/b;->d:I

    .line 51
    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/d;-><init>(Lcom/google/android/material/datepicker/C;Lcom/google/android/material/datepicker/C;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/C;I)V

    .line 53
    .line 54
    .line 55
    return-object v3
.end method

.method public setOpenAt(J)Lcom/google/android/material/datepicker/b;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/datepicker/b;->c:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method
