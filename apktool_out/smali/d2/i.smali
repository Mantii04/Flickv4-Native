.class public final Ld2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/H;


# static fields
.field public static final a:Ld2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld2/i;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/i;->a:Ld2/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ld2/p;->d(Lcom/airbnb/lottie/parser/moshi/a;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ld2/i;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
