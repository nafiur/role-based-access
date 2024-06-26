<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <meta name="description" content="School Management System">
    <meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
    <meta name="author" content="Nafiur Rahman">
    <meta name="robots" content="noindex, nofollow">

    <title>Signup - School Management </title>

    <link rel="shortcut icon" href="assets/img/favicon.png">

    <link rel="shortcut icon" href="{{ asset('backend/assets/img/favicon.png') }}">

    <style type="text/css">
        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/400/normal.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/400/normal.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/400/normal.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/400/normal.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/400/normal.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/400/normal.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/400/normal.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/500/normal.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/500/normal.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/500/normal.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/500/normal.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/500/normal.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/500/normal.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/500/normal.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/700/normal.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/700/normal.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/700/normal.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/700/normal.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/700/normal.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/700/normal.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/700/normal.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/900/normal.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/900/normal.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/900/normal.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/900/normal.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/900/normal.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/900/normal.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: normal;
            font-weight: 900;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/900/normal.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/400/italic.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/400/italic.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/400/italic.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/400/italic.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/400/italic.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/400/italic.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 400;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/400/italic.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/500/italic.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/500/italic.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/500/italic.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/500/italic.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/500/italic.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/500/italic.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 500;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/500/italic.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/greek/700/italic.woff2);
            unicode-range: U+0370-03FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/latin/700/italic.woff2);
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/latin-ext/700/italic.woff2);
            unicode-range: U+0100-02AF, U+0304, U+0308, U+0329, U+1E00-1E9F, U+1EF2-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic/700/italic.woff2);
            unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/vietnamese/700/italic.woff2);
            unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+0300-0301, U+0303-0304, U+0308-0309, U+0323, U+0329, U+1EA0-1EF9, U+20AB;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/cyrillic-ext/700/italic.woff2);
            unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
            font-display: swap;
        }

        @font-face {
            font-family: Roboto;
            font-style: italic;
            font-weight: 700;
            src: url(/cf-fonts/s/roboto/5.0.11/greek-ext/700/italic.woff2);
            unicode-range: U+1F00-1FFF;
            font-display: swap;
        }

    </style>

    <link rel="stylesheet" href="{{ asset('backend/assets/css/bootstrap.min.css') }}">

    <link rel="stylesheet" href="{{ asset('backend/assets/plugins/feather/feather.css') }}">

    <link rel="stylesheet" href="{{ asset('backend/assets/plugins/icons/flags/flags.css') }}">

    <link rel="stylesheet" href="{{ asset('backend/assets/plugins/fontawesome/css/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/plugins/fontawesome/css/all.min.css') }}">

    <link rel="stylesheet" href="{{ asset('backend/assets/css/style.css') }}">
</head>
<body>

    <div class="main-wrapper login-body">
        <div class="login-wrapper">
            <div class="container">
                <div class="loginbox">
                    <div class="login-left">
                        <img class="img-fluid" src="{{ asset('backend/assets/img/login.png') }}" alt="Logo">
                    </div>
                    <div class="login-right">
                        <div class="login-right-wrap">
                            <h1>Sign Up</h1>
                            <p class="account-subtitle">Enter details to create your account</p>

                            <form method="POST" action="{{ route('register') }}">
                                @csrf
                                <div class="form-group">
                                    <label>Name <span class="login-danger">*</span></label>
                                    <input class="form-control" type="text" name="name" value="{{ old('name') }}">
                                    <span class="profile-views"><i class="fas fa-user-circle"></i></span>
                                    @error('name')
                                    <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Email <span class="login-danger">*</span></label>
                                    <input class="form-control" type="text" name="email" value="{{ old('email') }}">
                                    <span class="profile-views"><i class="fas fa-envelope"></i></span>
                                    @error('email')
                                    <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Password <span class="login-danger">*</span></label>
                                    <input class="form-control pass-input" type="password" name="password">
                                    <span class="profile-views feather-eye toggle-password"></span>
                                    @error('password')
                                    <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Confirm password <span class="login-danger">*</span></label>
                                    <input class="form-control pass-confirm" type="password" name="password_confirmation">
                                    <span class="profile-views feather-eye reg-toggle-password"></span>
                                    @error('password_confirmation')
                                    <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="dont-have">Already Registered? <a href="{{ route('login') }}">Login</a></div>
                                <div class="form-group mb-0">
                                    <button class="btn btn-primary btn-block" type="submit">Register</button>
                                </div>
                            </form>




                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('backend/assets/js/jquery-3.7.1.min.js') }}" type="text/javascript"></script>

    <script src="{{ asset('backend/assets/js/bootstrap.bundle.min.js') }}" type="text/javascript"></script>

    <script src="{{ asset('backend/assets/js/feather.min.js') }}" type="text/javascript"></script>

    <script src="{{ asset('backend/assets/plugins/slimscroll/jquery.slimscroll.min.js') }}" type="text/javascript"></script>

    <script src="{{ asset('backend/assets/plugins/apexchart/apexcharts.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('backend/assets/plugins/apexchart/chart-data.js') }}" type="text/javascript"></script>

    <script src="{{ asset('backend/assets/js/script.js') }}" type="text/javascript"></script>
</body>
</html>
