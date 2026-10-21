.class public final Ld2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/H;


# static fields
.field public static final a:Ld2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld2/o;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld2/o;->a:Ld2/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Integer;
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

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    invoke-virtual {p0, p1, p2}, Ld2/o;->parse(Lcom/airbnb/lottie/parser/moshi/a;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
