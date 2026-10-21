.class public final LP3/j;
.super LP3/k;
.source "SourceFile"


# static fields
.field public static final e:LP3/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LP3/j;

    .line 2
    .line 3
    const-string v1, "CharMatcher.javaIsoControl()"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LP3/k;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LP3/j;->e:LP3/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    if-le p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x7f

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x9f

    .line 10
    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method
