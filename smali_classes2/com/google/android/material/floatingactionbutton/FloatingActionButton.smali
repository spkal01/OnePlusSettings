.class public Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.super Lcom/google/android/material/internal/VisibilityAwareImageButton;
.source "FloatingActionButton.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableImageSourceView;
.implements Lcom/google/android/material/expandable/ExpandableWidget;
.implements Lcom/google/android/material/shape/Shapeable;
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;,
        Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private borderWidth:I

.field compatPadding:Z

.field private customSize:I

.field private final expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

.field private final imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

.field private imageMode:Landroid/graphics/PorterDuff$Mode;

.field private imagePadding:I

.field private imageTint:Landroid/content/res/ColorStateList;

.field private impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field private mScrollHide:Z

.field private maxImageSize:I

.field private rippleColor:Landroid/content/res/ColorStateList;

.field final shadowPadding:Landroid/graphics/Rect;

.field private size:I

.field private final touchArea:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_FloatingActionButton:I

    sput v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 204
    sget v0, Lcom/google/android/material/R$attr;->floatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 210
    sget v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mScrollHide:Z

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    .line 192
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    .line 212
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    sget-object v4, Lcom/google/android/material/R$styleable;->FloatingActionButton:[I

    sget v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->DEF_STYLE_RES:I

    new-array v7, p1, [I

    move-object v2, v1

    move-object v3, p2

    move v5, p3

    .line 215
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 218
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTint:I

    .line 219
    invoke-static {v1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 221
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v4, -0x1

    .line 223
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x0

    .line 222
    invoke-static {v3, v5}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 224
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_rippleColor:I

    .line 225
    invoke-static {v1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    .line 227
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 228
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_fabCustomSize:I

    .line 229
    invoke-virtual {v2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 230
    sget v3, Lcom/google/android/material/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v2, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    .line 232
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$dimen;->op_control_shadow_z3:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$dimen;->op_control_shadow_z5:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 238
    :goto_0
    sget v5, Lcom/google/android/material/R$styleable;->FloatingActionButton_hoveredFocusedTranslationZ:I

    const/4 v6, 0x0

    .line 239
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 240
    sget v7, Lcom/google/android/material/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    .line 241
    invoke-virtual {v2, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 242
    sget v6, Lcom/google/android/material/R$styleable;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v2, v6, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 244
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_fab_min_touch_target:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 245
    sget v7, Lcom/google/android/material/R$styleable;->FloatingActionButton_maxImageSize:I

    invoke-virtual {v2, v7, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    .line 247
    sget v7, Lcom/google/android/material/R$styleable;->FloatingActionButton_showMotionSpec:I

    .line 248
    invoke-static {v1, v2, v7}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v7

    .line 249
    sget v8, Lcom/google/android/material/R$styleable;->FloatingActionButton_hideMotionSpec:I

    .line 250
    invoke-static {v1, v2, v8}, Lcom/google/android/material/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object v8

    .line 251
    sget-object v9, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    .line 252
    invoke-static {v1, p2, p3, v0, v9}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 256
    sget v1, Lcom/google/android/material/R$styleable;->FloatingActionButton_ensureMinTouchTargetSize:I

    .line 257
    invoke-virtual {v2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 259
    sget v9, Lcom/google/android/material/R$styleable;->FloatingActionButton_android_enabled:I

    invoke-virtual {v2, v9, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 261
    sget v4, Lcom/google/android/material/R$styleable;->FloatingActionButton_scrollHide:I

    invoke-virtual {v2, v4, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScrollHide(Z)V

    .line 263
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    new-instance p1, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 266
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 268
    new-instance p1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-direct {p1, p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;-><init>(Lcom/google/android/material/expandable/ExpandableWidget;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 270
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 271
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->borderWidth:I

    .line 272
    invoke-virtual {p1, p2, p3, v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->initializeBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V

    .line 273
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setMinTouchTargetSize(I)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    .line 275
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setMaxImageSize(I)V

    .line 278
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 279
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    .line 280
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setEnsureMinTouchTargetSize(Z)V

    .line 282
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I
    .locals 0

    .line 104
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    return p0
.end method

.method static synthetic access$101(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private createImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 2

    .line 1525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1526
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    return-object v0

    .line 1528
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/shadow/ShadowViewDelegate;)V

    return-object v0
.end method

.method private getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    if-nez v0, :cond_0

    .line 1518
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->createImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 1520
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->impl:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    return-object p0
.end method

.method private getSizeDimension(I)I
    .locals 3

    .line 862
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    if-eqz v0, :cond_0

    return v0

    .line 866
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    .line 881
    sget p0, Lcom/google/android/material/R$dimen;->op_control_avatar_size2:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 876
    :cond_1
    sget p0, Lcom/google/android/material/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 870
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 871
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 872
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1d6

    if-ge p1, v0, :cond_3

    .line 873
    invoke-direct {p0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 874
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private offsetRectWithShadow(Landroid/graphics/Rect;)V
    .locals 2

    .line 968
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 969
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 970
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 971
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private onApplySupportImageTint()V
    .locals 4

    .line 547
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 553
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 558
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    if-nez p0, :cond_2

    .line 560
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 564
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    invoke-static {v1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    .line 982
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 983
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    if-ne v0, p0, :cond_0

    move p0, p1

    goto :goto_0

    .line 1001
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 994
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 795
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$3;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    return-object v0
.end method


# virtual methods
.method public addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnHideAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 669
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addOnShowAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addTransformationCallback(Lcom/google/android/material/animation/TransformationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/animation/TransformationCallback<",
            "+",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;)V"
        }
    .end annotation

    .line 1432
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/animation/TransformationCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->addTransformationCallback(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalTransformationCallback;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 899
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 900
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$Behavior;-><init>()V

    return-object p0
.end method

.method public getCompatElevation()F
    .locals 0

    .line 1284
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getElevation()F

    move-result p0

    return p0
.end method

.method public getCompatHoveredFocusedTranslationZ()F
    .locals 0

    .line 1319
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHoveredFocusedTranslationZ()F

    move-result p0

    return p0
.end method

.method public getCompatPressedTranslationZ()F
    .locals 0

    .line 1354
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPressedTranslationZ()F

    move-result p0

    return p0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 977
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getContentBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentRect(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 951
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getCustomSize()I
    .locals 0

    .line 844
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    return p0
.end method

.method public getExpandedComponentIdHint()I
    .locals 0

    .line 725
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->getExpandedComponentIdHint()I

    move-result p0

    return p0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 1408
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p0

    return-object p0
.end method

.method public getMeasuredContentRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 963
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 964
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRippleColor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getScrollHideBoolean()Z
    .locals 0

    .line 290
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mScrollHide:Z

    return p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    .line 611
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 0

    .line 1384
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 785
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    return p0
.end method

.method getSizeDimension()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension(I)I

    move-result p0

    return p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 496
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 529
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getUseCompatPadding()Z
    .locals 0

    .line 753
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    return p0
.end method

.method public hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 693
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 1

    .line 697
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hide(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    return-void
.end method

.method public hideWithAnim()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mScrollHide:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Landroidx/animation/AnimatorUtils;->op__control_interpolator_fast_out_linear_in:Landroid/view/animation/Interpolator;

    .line 316
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public isOrWillBeHidden()Z
    .locals 0

    .line 809
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeHidden()Z

    move-result p0

    return p0
.end method

.method public isOrWillBeShown()Z
    .locals 0

    .line 813
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->isOrWillBeShown()Z

    move-result p0

    return p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 905
    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 906
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 887
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 888
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 893
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 894
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 351
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->maxImageSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imagePadding:I

    .line 352
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updatePadding()V

    .line 354
    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result p1

    .line 355
    invoke-static {v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result p2

    .line 359
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 362
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->shadowPadding:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 927
    instance-of v0, p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    if-nez v0, :cond_0

    .line 928
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 932
    :cond_0
    check-cast p1, Lcom/google/android/material/stateful/ExtendableSavedState;

    .line 933
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 935
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    iget-object p1, p1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    const-string v0, "expandableWidgetHelper"

    .line 936
    invoke-virtual {p1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 935
    invoke-virtual {p0, p1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 911
    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 916
    :cond_0
    new-instance v1, Lcom/google/android/material/stateful/ExtendableSavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/stateful/ExtendableSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 917
    iget-object v0, v1, Lcom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Landroidx/collection/SimpleArrayMap;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 918
    invoke-virtual {p0}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "expandableWidgetHelper"

    .line 917
    invoke-virtual {v0, v2, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->touchArea:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1014
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 580
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 570
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    const-string p0, "FloatingActionButton"

    const-string p1, "Setting a custom background is not supported."

    .line 575
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 448
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 449
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 475
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 476
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 0

    .line 1296
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setElevation(F)V

    return-void
.end method

.method public setCompatElevationResource(I)V
    .locals 1

    .line 1308
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZ(F)V
    .locals 0

    .line 1331
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    .line 1343
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZ(F)V
    .locals 0

    .line 1366
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    return-void
.end method

.method public setCompatPressedTranslationZResource(I)V
    .locals 1

    .line 1378
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 831
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    if-eq p1, v0, :cond_0

    .line 832
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 833
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void

    .line 828
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Custom size must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(F)V
    .locals 0

    .line 1272
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setElevation(F)V

    .line 1273
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateShapeElevation(F)V

    return-void
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 1

    .line 632
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getEnsureMinTouchTargetSize()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setEnsureMinTouchTargetSize(Z)V

    .line 634
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpandedComponentIdHint(I)V
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->setExpandedComponentIdHint(I)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 1417
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1426
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 592
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 593
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateImageMatrixScale()V

    .line 595
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    .line 587
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 0

    .line 401
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 416
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    .line 417
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->rippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1495
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleX(F)V

    .line 1496
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onScaleChanged()V

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1501
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setScaleY(F)V

    .line 1502
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onScaleChanged()V

    return-void
.end method

.method public setScrollHide(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mScrollHide:Z

    return-void
.end method

.method public setShadowPaddingEnabled(Z)V
    .locals 0

    .line 1513
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShadowPaddingEnabled(Z)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 0

    .line 1393
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1402
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/animation/MotionSpec;->createFromResource(Landroid/content/Context;I)Lcom/google/android/material/animation/MotionSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 770
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->customSize:I

    .line 771
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    if-eq p1, v0, :cond_0

    .line 772
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->size:I

    .line 773
    invoke-virtual {p0}, Landroid/widget/ImageButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 486
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 505
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 521
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageTint:Landroid/content/res/ColorStateList;

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 535
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->imageMode:Landroid/graphics/PorterDuff$Mode;

    .line 536
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->onApplySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1477
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 1478
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 1483
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    .line 1484
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    return-void
.end method

.method public setTranslationZ(F)V
    .locals 0

    .line 1489
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    .line 1490
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onTranslationChanged()V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 738
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    if-eq v0, p1, :cond_0

    .line 739
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->compatPadding:Z

    .line 740
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->onCompatShadowChanged()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 641
    invoke-super {p0, p1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->setVisibility(I)V

    return-void
.end method

.method public show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V

    return-void
.end method

.method show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;Z)V
    .locals 1

    .line 665
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getImpl()Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->wrapOnVisibilityChangedListener(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V

    return-void
.end method

.method public showWithAnim()V
    .locals 3

    .line 321
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->mScrollHide:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$2;-><init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    .line 343
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
