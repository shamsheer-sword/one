<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #fafaf8;
            --bg-card: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #2d2d44;
            --accent: #e07a5f;
            --accent-light: #f4d0c4;
            --accent-dark: #c05a3e;
            --muted: #6b6b7a;
            --muted-light: #a0a0b0;
            --surface: #f0efed;
            --success: #2a9d8f;
            --warning: #e9c46a;
            --danger: #e63946;
            --radius: 16px;
            --radius-sm: 10px;
            --shadow: 0 4px 24px rgba(26, 26, 46, 0.06);
            --shadow-hover: 0 12px 48px rgba(26, 26, 46, 0.10);
            --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1240px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(224, 122, 95, 0.30);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(26, 26, 46, 0.15);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.25);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.25);
            border-color: rgba(255, 255, 255, 0.4);
            transform: translateY(-2px);
        }
        .btn-sm {
            padding: 8px 16px;
            font-size: 13px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.94);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(26, 26, 46, 0.06);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
            min-height: 68px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.5px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent {
            color: var(--accent);
        }
        .brand i {
            font-size: 26px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 42px;
            height: 42px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .badge-wrap {
            position: relative;
        }
        .badge-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            padding: 0 5px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
            transition: transform 0.2s ease;
        }
        .badge-count.hidden {
            display: none;
        }

        /* Search Bar with Clear Button */
        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 999px;
            padding: 0 14px 0 18px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 240px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(224, 122, 95, 0.10);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        /* Hide native browser clear icon so our custom one looks consistent */
        .search-wrap input::-webkit-search-cancel-button {
            -webkit-appearance: none;
        }
        .search-clear {
            color: var(--muted-light);
            font-size: 14px;
            padding: 4px 6px;
            display: none;
        }
        .search-clear.visible {
            display: inline-block;
        }
        .search-clear:hover {
            color: var(--primary);
        }
        .search-wrap .search-submit {
            padding: 8px 0 8px 8px;
            color: var(--muted);
            font-size: 15px;
            transition: var(--transition);
        }
        .search-wrap .search-submit:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            font-size: 20px;
            background: var(--surface);
            color: var(--primary);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(26, 26, 46, 0.06);
            padding: 12px 0 20px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 460px;
            padding: 60px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 20px 24px 0;
            background: linear-gradient(135deg, #1a1a2e 0%, #2d2d44 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.35;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(224, 122, 95, 0.22);
            color: #ff9e85;
            padding: 6px 16px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 16px;
        }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: 48px;
            font-weight: 700;
            color: #fff;
            line-height: 1.15;
            max-width: 640px;
            margin-bottom: 16px;
        }
        .hero p {
            color: rgba(255, 255, 255, 0.85);
            font-size: 17px;
            max-width: 520px;
            margin-bottom: 28px;
            line-height: 1.6;
        }
        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 56px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 32px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -0.3px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 4px;
            font-size: 15px;
        }
        .filter-status {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .cat-card:hover,
        .cat-card.active {
            transform: translateY(-4px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent);
        }
        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap,
        .cat-card.active .icon-wrap {
            background: var(--accent);
            color: #fff;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.92);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }
        .product-card .wish-btn:hover {
            transform: scale(1.1);
            color: var(--danger);
        }
        .product-card .wish-btn.wished {
            color: var(--danger);
        }
        .product-card .body {
            padding: 16px 18px 14px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 600;
            line-height: 1.35;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #f5a623;
        }
        .product-card .body .rating span {
            color: var(--muted);
        }
        .product-card .footer {
            padding: 0 18px 18px;
        }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 11px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* Empty State */
        .empty-state {
            grid-column: 1 / -1;
            text-align: center;
            padding: 56px 20px;
            background: var(--bg-card);
            border-radius: var(--radius);
            box-shadow: var(--shadow);
        }
        .empty-state i {
            font-size: 40px;
            color: var(--muted-light);
            margin-bottom: 12px;
        }
        .empty-state h4 {
            font-size: 18px;
            margin-bottom: 6px;
        }
        .empty-state p {
            color: var(--muted);
            margin-bottom: 20px;
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 300px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 40px 44px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-block;
            background: var(--warning);
            color: var(--primary);
            padding: 4px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            align-self: flex-start;
            margin-bottom: 12px;
        }
        .deal-wrap .deal-content h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 18px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 4px 0 16px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }
        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 16px 0 20px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 10px 16px;
            border-radius: var(--radius-sm);
            min-width: 68px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.75;
            text-transform: uppercase;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
        }
        .testimonial-card {
            flex: 0 0 340px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 24px 26px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
        }
        .testimonial-card .stars {
            color: #f5a623;
            font-size: 16px;
            margin-bottom: 10px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            margin-bottom: 14px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            object-fit: cover;
        }
        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: var(--radius);
            padding: 48px 56px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            opacity: 0.8;
            font-size: 15px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 14px 20px;
            border-radius: 999px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.14);
            color: #fff;
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
        }
        #newsletterMsg {
            margin-top: 10px;
            font-size: 14px;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 16px;
            padding: 44px 0 28px;
            border-top: 1px solid rgba(26, 26, 46, 0.06);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 32px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            margin-top: 8px;
        }
        .footer-grid .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }
        .footer-grid .socials a {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
        }
        .footer-grid .socials a:hover {
            background: var(--accent);
            color: #fff;
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(26, 26, 46, 0.06);
            color: var(--muted);
            font-size: 13px;
        }

        /* ========== SLIDE-OUT CART DRAWER ========== */
        .drawer-backdrop {
            position: fixed;
            inset: 0;
            background: rgba(26, 26, 46, 0.45);
            backdrop-filter: blur(4px);
            z-index: 200;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.25s ease;
        }
        .drawer-backdrop.open {
            opacity: 1;
            pointer-events: auto;
        }
        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            max-width: 420px;
            background: #fff;
            z-index: 210;
            display: flex;
            flex-direction: column;
            box-shadow: -8px 0 32px rgba(0, 0, 0, 0.12);
            transform: translateX(100%);
            transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .cart-drawer.open {
            transform: translateX(0);
        }
        .drawer-header {
            padding: 20px 24px;
            border-bottom: 1px solid var(--surface);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .drawer-header h3 {
            font-size: 18px;
            font-weight: 700;
        }
        .drawer-close {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            font-size: 16px;
        }
        .drawer-body {
            flex: 1;
            overflow-y: auto;
            padding: 20px 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .cart-item {
            display: flex;
            gap: 14px;
            align-items: center;
            padding-bottom: 16px;
            border-bottom: 1px solid var(--surface);
        }
        .cart-item img {
            width: 68px;
            height: 68px;
            border-radius: var(--radius-sm);
            object-fit: cover;
            background: var(--surface);
        }
        .cart-item-info {
            flex: 1;
        }
        .cart-item-info h4 {
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 2px;
        }
        .cart-item-info .item-price {
            font-size: 14px;
            font-weight: 700;
            color: var(--accent);
        }
        .qty-controls {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-top: 8px;
        }
        .qty-btn {
            width: 26px;
            height: 26px;
            border-radius: 6px;
            background: var(--surface);
            font-weight: 700;
            display: grid;
            place-items: center;
        }
        .qty-btn:hover {
            background: var(--accent-light);
        }
        .remove-item {
            color: var(--muted-light);
            font-size: 14px;
            padding: 6px;
        }
        .remove-item:hover {
            color: var(--danger);
        }
        .drawer-footer {
            padding: 20px 24px;
            border-top: 1px solid var(--surface);
            background: var(--bg);
        }
        .subtotal-row {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 14px;
        }

        /* ========== TOAST NOTIFICATION & BACK TO TOP ========== */
        .toast-container {
            position: fixed;
            bottom: 24px;
            right: 24px;
            z-index: 300;
            display: flex;
            flex-direction: column;
            gap: 10px;
            pointer-events: none;
        }
        .toast {
            background: var(--primary);
            color: #fff;
            padding: 12px 18px;
            border-radius: var(--radius-sm);
            font-size: 14px;
            font-weight: 500;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.18);
            display: flex;
            align-items: center;
            gap: 10px;
            animation: slideUp 0.25s ease forwards;
        }
        .toast i {
            color: var(--success);
        }
        @keyframes slideUp {
            from { opacity: 0; transform: translateY(12px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .back-to-top {
            position: fixed;
            bottom: 24px;
            left: 24px;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--primary);
            color: #fff;
            display: grid;
            place-items: center;
            box-shadow: var(--shadow-hover);
            opacity: 0;
            pointer-events: none;
            transition: var(--transition);
            z-index: 90;
        }
        .back-to-top.visible {
            opacity: 1;
            pointer-events: auto;
        }
        .back-to-top:hover {
            background: var(--accent);
            transform: translateY(-3px);
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .categories-grid { grid-template-columns: repeat(3, 1fr); }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
        }
        @media (max-width: 992px) {
            .hero h1 { font-size: 36px; }
            .deal-wrap { flex-direction: column; }
            .deal-wrap .deal-img { flex: 0 0 240px; }
            .search-wrap { min-width: 160px; }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: grid; place-items: center; }
            .products-grid, .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
            .hero { margin: 12px 12px 0; min-height: 340px; padding: 36px 0; }
            .hero h1 { font-size: 28px; }
            .footer-grid { grid-template-columns: 1fr; gap: 20px; }
            .search-wrap { min-width: 130px; }
        }
    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:12px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-store-alt"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button class="search-clear" id="searchClear" aria-label="Clear search"><i class="fas fa-times"></i></button>
                    <button class="search-submit" id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" id="accountBtn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <div class="badge-wrap">
                        <button class="icon-btn" id="wishlistHeaderBtn" title="Wishlist" aria-label="Wishlist">
                            <i class="far fa-heart"></i>
                        </button>
                        <span class="badge-count hidden" id="wishCount">0</span>
                    </div>
                    <div class="badge-wrap">
                        <button class="icon-btn" id="cartBtn" title="Open Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="badge-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
                <h1>Discover Premium <br>Essentials</h1>
                <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Browse Categories</h2>
                        <p>Click a category to filter products instantly</p>
                    </div>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Trending Now</h2>
                        <p id="prodSubtitle">What's hot — popular picks from our community</p>
                    </div>
                    <div class="filter-status" id="filterStatus" style="display:none;">
                        <button class="btn btn-outline btn-sm" id="resetFilterBtn">
                            <i class="fas fa-undo"></i> Show All Products
                        </button>
                    </div>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">⚡ Flash Deal</h2>
                        <p>Grab it before it's gone — limited stock</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
                        <div>
                            <span class="price-big">$999 <span class="old">$1,199</span></span>
                        </div>
                        <p class="stock">Only <strong id="dealStock">12</strong> items left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;">
                            <i class="fas fa-cart-plus"></i> Add Deal to Cart
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">What Our Customers Say</h2>
                        <p>Real reviews from real people</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Stay in the Loop</h3>
                        <p>Get exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" novalidate>
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn btn-primary" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-store-alt"></i>
                        <span>Nexus<span class="accent">Shop</span></span>
                    </div>
                    <p>Modern e‑commerce experience built with care. Quality products, seamless checkout.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> NexusShop. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SLIDE-OUT CART DRAWER ===== -->
    <div class="drawer-backdrop" id="drawerBackdrop"></div>
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping Cart">
        <div class="drawer-header">
            <h3>Your Cart (<span id="drawerCount">0</span>)</h3>
            <button class="drawer-close" id="closeCartBtn" aria-label="Close cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="drawer-body" id="cartItemsContainer"></div>
        <div class="drawer-footer" id="drawerFooter" style="display:none;">
            <div class="subtotal-row">
                <span>Subtotal</span>
                <span id="cartSubtotal">$0</span>
            </div>
            <button class="btn btn-primary" id="checkoutBtn" style="width:100%;">
                <i class="fas fa-lock"></i> Proceed to Checkout
            </button>
        </div>
    </aside>

    <!-- ===== TOASTS & BACK TO TOP ===== -->
    <div class="toast-container" id="toastContainer"></div>
    <button class="back-to-top" id="backToTop" aria-label="Back to top"><i class="fas fa-arrow-up"></i></button>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const FLASH_DEAL_ITEM = {
            id: 99,
            title: 'MacBook Air M2 (Flash Deal)',
            price: 999,
            img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80'
        };

        const TESTIMONIALS = [
            { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
        ];

        // ============================================================
        // STATE
        // ============================================================
        let cart = []; // Array of { id, title, price, img, qty }
        let wishlist = new Set();
        let activeCategory = null;
        let dealStockCount = 12;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const prodTitle = document.getElementById('prod-title');
        const prodSubtitle = document.getElementById('prodSubtitle');
        const filterStatus = document.getElementById('filterStatus');
        const resetFilterBtn = document.getElementById('resetFilterBtn');

        const searchInput = document.getElementById('searchInput');
        const searchClear = document.getElementById('searchClear');
        const searchBtn = document.getElementById('searchBtn');

        const cartCountEl = document.getElementById('cartCount');
        const wishCountEl = document.getElementById('wishCount');
        const cartDrawer = document.getElementById('cartDrawer');
        const drawerBackdrop = document.getElementById('drawerBackdrop');
        const cartItemsContainer = document.getElementById('cartItemsContainer');
        const drawerFooter = document.getElementById('drawerFooter');
        const drawerCount = document.getElementById('drawerCount');
        const cartSubtotal = document.getElementById('cartSubtotal');

        // ============================================================
        // TOAST NOTIFICATIONS
        // ============================================================
        function showToast(message) {
            const container = document.getElementById('toastContainer');
            const toast = document.createElement('div');
            toast.className = 'toast';
            toast.innerHTML = `<i class="fas fa-check-circle"></i> <span>${escapeHtml(message)}</span>`;
            container.appendChild(toast);
            setTimeout(() => {
                toast.style.opacity = '0';
                toast.style.transition = 'opacity 0.25s ease';
                setTimeout(() => toast.remove(), 250);
            }, 2400);
        }

        // ============================================================
        // RENDER CATEGORIES & PRODUCTS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = `cat-card ${activeCategory === cat.name ? 'active' : ''}`;
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    if (activeCategory === cat.name) {
                        resetFilters();
                    } else {
                        activeCategory = cat.name;
                        searchInput.value = '';
                        searchClear.classList.remove('visible');
                        renderCategories();
                        applyFilters();
                        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                    }
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML = `
                    <div class="empty-state">
                        <i class="fas fa-search"></i>
                        <h4>No matching products found</h4>
                        <p>Try adjusting your search keywords or browse all categories.</p>
                        <button class="btn btn-primary btn-sm" onclick="resetFilters()">Reset Filters</button>
                    </div>
                `;
                return;
            }

            list.forEach(p => {
                const isWished = wishlist.has(p.id);
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));

                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn ${isWished ? 'wished' : ''}" data-id="${p.id}" aria-label="Toggle wishlist">
                            <i class="${isWished ? 'fas' : 'far'} fa-heart"></i>
                        </button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Bind Add to Cart
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    const id = Number(this.dataset.id);
                    const product = PRODUCTS.find(x => x.id === id);
                    if (product) addItemToCart(product, this);
                });
            });

            // Bind Wishlist Toggle
            productsGrid.querySelectorAll('.wish-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    const id = Number(this.dataset.id);
                    const product = PRODUCTS.find(x => x.id === id);
                    if (!product) return;

                    if (wishlist.has(id)) {
                        wishlist.delete(id);
                        this.classList.remove('wished');
                        this.innerHTML = '<i class="far fa-heart"></i>';
                        showToast(`Removed "${product.title}" from wishlist`);
                    } else {
                        wishlist.add(id);
                        this.classList.add('wished');
                        this.innerHTML = '<i class="fas fa-heart"></i>';
                        showToast(`Saved "${product.title}" to wishlist`);
                    }
                    updateWishlistBadge();
                });
            });
        }

        function updateWishlistBadge() {
            wishCountEl.textContent = wishlist.size;
            wishCountEl.classList.toggle('hidden', wishlist.size === 0);
        }

        // ============================================================
        // SEARCH & FILTER LOGIC
        // ============================================================
        function applyFilters() {
            const query = searchInput.value.trim().toLowerCase();
            let filtered = PRODUCTS;

            if (activeCategory) {
                filtered = filtered.filter(p => p.category === activeCategory);
            }
            if (query) {
                filtered = filtered.filter(p =>
                    p.title.toLowerCase().includes(query) ||
                    p.category.toLowerCase().includes(query)
                );
            }

            // Update section headings dynamically
            if (activeCategory || query) {
                filterStatus.style.display = 'flex';
                prodTitle.textContent = activeCategory ? `${activeCategory}` : `Search Results`;
                prodSubtitle.textContent = `Showing ${filtered.length} product${filtered.length !== 1 ? 's' : ''}`;
            } else {
                filterStatus.style.display = 'none';
                prodTitle.textContent = 'Trending Now';
                prodSubtitle.textContent = "What's hot — popular picks from our community";
            }

            renderProducts(filtered);
        }

        function resetFilters() {
            activeCategory = null;
            searchInput.value = '';
            searchClear.classList.remove('visible');
            renderCategories();
            applyFilters();
        }

        searchInput.addEventListener('input', () => {
            searchClear.classList.toggle('visible', searchInput.value.length > 0);
            applyFilters();
        });

        searchClear.addEventListener('click', () => {
            searchInput.value = '';
            searchClear.classList.remove('visible');
            searchInput.focus();
            applyFilters();
        });

        searchBtn.addEventListener('click', () => {
            applyFilters();
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });

        resetFilterBtn.addEventListener('click', resetFilters);

        // ============================================================
        // CART DRAWER & LOGIC
        // ============================================================
        function openCart() {
            cartDrawer.classList.add('open');
            drawerBackdrop.classList.add('open');
            document.body.style.overflow = 'hidden';
        }

        function closeCart() {
            cartDrawer.classList.remove('open');
            drawerBackdrop.classList.remove('open');
            document.body.style.overflow = '';
        }

        function addItemToCart(item, btnEl) {
            const existing = cart.find(c => c.id === item.id);
            if (existing) {
                existing.qty += 1;
            } else {
                cart.push({ id: item.id, title: item.title, price: item.price, img: item.img, qty: 1 });
            }

            updateCartUI();
            showToast(`Added "${item.title}" to cart`);

            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1200);
            }
        }

        function updateItemQty(id, delta) {
            const index = cart.findIndex(c => c.id === id);
            if (index === -1) return;
            cart[index].qty += delta;
            if (cart[index].qty <= 0) {
                cart.splice(index, 1);
            }
            updateCartUI();
        }

        function updateCartUI() {
            const totalItems = cart.reduce((sum, item) => sum + item.qty, 0);
            const totalCost = cart.reduce((sum, item) => sum + item.price * item.qty, 0);

            cartCountEl.textContent = totalItems;
            drawerCount.textContent = totalItems;
            cartSubtotal.textContent = `$${totalCost.toLocaleString()}`;

            cartCountEl.style.transform = 'scale(1.25)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);

            if (cart.length === 0) {
                drawerFooter.style.display = 'none';
                cartItemsContainer.innerHTML = `
                    <div style="text-align:center; padding: 60px 20px; color: var(--muted);">
                        <i class="fas fa-shopping-bag" style="font-size: 42px; color: var(--muted-light); margin-bottom: 12px;"></i>
                        <h4 style="color: var(--primary); margin-bottom: 6px;">Your cart is empty</h4>
                        <p style="font-size: 14px; margin-bottom: 20px;">Looks like you haven't added anything yet.</p>
                        <button class="btn btn-primary btn-sm" onclick="closeCart()">Start Shopping</button>
                    </div>
                `;
                return;
            }

            drawerFooter.style.display = 'block';
            cartItemsContainer.innerHTML = cart.map(item => `
                <div class="cart-item">
                    <img src="${item.img}" alt="${escapeHtml(item.title)}">
                    <div class="cart-item-info">
                        <h4>${escapeHtml(item.title)}</h4>
                        <div class="item-price">$${(item.price * item.qty).toLocaleString()}</div>
                        <div class="qty-controls">
                            <button class="qty-btn" onclick="updateItemQty(${item.id}, -1)" aria-label="Decrease quantity">−</button>
                            <span style="font-size: 14px; font-weight: 600; min-width: 18px; text-align:center;">${item.qty}</span>
                            <button class="qty-btn" onclick="updateItemQty(${item.id}, 1)" aria-label="Increase quantity">+</button>
                        </div>
                    </div>
                    <button class="remove-item" onclick="updateItemQty(${item.id}, -${item.qty})" aria-label="Remove item">
                        <i class="fas fa-trash-alt"></i>
                    </button>
                </div>
            `).join('');
        }

        document.getElementById('cartBtn').addEventListener('click', openCart);
        document.getElementById('closeCartBtn').addEventListener('click', closeCart);
        drawerBackdrop.addEventListener('click', closeCart);
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && cartDrawer.classList.contains('open')) closeCart();
        });

        document.getElementById('checkoutBtn').addEventListener('click', () => {
            cart = [];
            updateCartUI();
            closeCart();
            showToast('🎉 Order placed successfully! Thank you for shopping.');
        });

        // ============================================================
        // TESTIMONIALS & UTILITIES
        // ============================================================
        function renderTestimonials() {
            const list = document.getElementById('testimonialsList');
            list.innerHTML = TESTIMONIALS.map(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                return `
                    <div class="testimonial-card">
                        <div class="stars">${stars}</div>
                        <blockquote>“${escapeHtml(t.text)}”</blockquote>
                        <div class="author">
                            <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                            <div>
                                <div class="name">${escapeHtml(t.name)}</div>
                                <div class="role">${escapeHtml(t.role)}</div>
                            </div>
                        </div>
                    </div>
                `;
            }).join('');
        }

        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;'
            }[s]));
        }

        // ============================================================
        // DEAL TIMER & EVENTS
        // ============================================================
        (function setupDealTimer() {
            const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = Math.max(0, target - Date.now());
                document.getElementById('dealDays').textContent = Math.floor(diff / 86400000);
                document.getElementById('dealHours').textContent = String(Math.floor((diff % 86400000) / 3600000)).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % 3600000) / 60000)).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % 60000) / 1000)).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        document.getElementById('buyDeal').addEventListener('click', function() {
            if (dealStockCount > 0) {
                dealStockCount--;
                document.getElementById('dealStock').textContent = dealStockCount;
                addItemToCart(FLASH_DEAL_ITEM, this);
            } else {
                showToast('Sorry, this flash deal is sold out!');
            }
        });

        // Mobile Menu
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        // Hero Scroll Buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });

        // Newsletter
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const emailInput = document.getElementById('newsletterEmail');
            const msg = document.getElementById('newsletterMsg');
            const email = emailInput.value.trim();

            if (!email || !email.includes('@')) {
                msg.textContent = 'Please enter a valid email address.';
                msg.style.color = '#ffb3b3';
                return;
            }
            msg.textContent = '🎉 Subscribed! Check your inbox for 10% off your first order.';
            msg.style.color = '#a8e6cf';
            emailInput.value = '';
        });

        // Back to Top Button
        const backToTop = document.getElementById('backToTop');
        window.addEventListener('scroll', () => {
            backToTop.classList.toggle('visible', window.scrollY > 400);
        });
        backToTop.addEventListener('click', () => {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        });

        // Header Wishlist / Account Feedback
        document.getElementById('wishlistHeaderBtn').addEventListener('click', () => {
            showToast(`You have ${wishlist.size} item${wishlist.size !== 1 ? 's' : ''} in your wishlist`);
        });
        document.getElementById('accountBtn').addEventListener('click', () => {
            showToast('Welcome back, Guest Shopper!');
        });

        // Init
        document.getElementById('year').textContent = new Date().getFullYear();
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartUI();
    </script>

</body>
</html>
