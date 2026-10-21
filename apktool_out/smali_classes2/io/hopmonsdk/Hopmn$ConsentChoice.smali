.class public final enum Lio/hopmonsdk/Hopmn$ConsentChoice;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/hopmonsdk/Hopmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsentChoice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/hopmonsdk/Hopmn$ConsentChoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/hopmonsdk/Hopmn$ConsentChoice;

.field public static final enum AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

.field public static final enum DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

.field public static final enum NONE:Lio/hopmonsdk/Hopmn$ConsentChoice;


# direct methods
.method private static synthetic $values()[Lio/hopmonsdk/Hopmn$ConsentChoice;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/hopmonsdk/Hopmn$ConsentChoice;

    sget-object v1, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/hopmonsdk/Hopmn$ConsentChoice;->NONE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/hopmonsdk/Hopmn$ConsentChoice;

    const-string v1, "AGREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/hopmonsdk/Hopmn$ConsentChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->AGREE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    new-instance v0, Lio/hopmonsdk/Hopmn$ConsentChoice;

    const-string v1, "DECLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/hopmonsdk/Hopmn$ConsentChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->DECLINE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    new-instance v0, Lio/hopmonsdk/Hopmn$ConsentChoice;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/hopmonsdk/Hopmn$ConsentChoice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->NONE:Lio/hopmonsdk/Hopmn$ConsentChoice;

    invoke-static {}, Lio/hopmonsdk/Hopmn$ConsentChoice;->$values()[Lio/hopmonsdk/Hopmn$ConsentChoice;

    move-result-object v0

    sput-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->$VALUES:[Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$ConsentChoice;
    .locals 1

    const-class v0, Lio/hopmonsdk/Hopmn$ConsentChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-object p0
.end method

.method public static values()[Lio/hopmonsdk/Hopmn$ConsentChoice;
    .locals 1

    sget-object v0, Lio/hopmonsdk/Hopmn$ConsentChoice;->$VALUES:[Lio/hopmonsdk/Hopmn$ConsentChoice;

    invoke-virtual {v0}, [Lio/hopmonsdk/Hopmn$ConsentChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/hopmonsdk/Hopmn$ConsentChoice;

    return-object v0
.end method
