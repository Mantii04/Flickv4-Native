.class final Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DNS:I = 0x2

.field static final IP:I = 0x7


# instance fields
.field private final type:I

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Value"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->value:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "Type"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->type:I

    .line 21
    .line 22
    return-void
.end method

.method public static DNS(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    .locals 2

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static IP(Ljava/lang/String;)Lcz/msebera/android/httpclient/conn/ssl/SubjectName;
    .locals 2

    .line 1
    new-instance v0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, p0, v1}, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/ssl/SubjectName;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
