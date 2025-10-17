# Tech Memo

## 2025-10-17

### 작업 요약

1.  **전역 CSS 스타일링 시스템 구축**
    *   `app/assets/stylesheets/` 경로에 `views` 디렉토리를 생성하여 `layouts.css`, `home.css`, `posts.css` 등 View에 따른 CSS 파일을 분리하여 관리하도록 구조를 잡았습니다.
    *   `application.css`에서 각 View의 CSS 파일을 `@import` 하도록 설정하여 전체 애플리케이션에 스타일이 적용되도록 했습니다.
    *   `application.html.erb`의 레이아웃을 수정하고, 각 View 파일(.erb)에 `container`, `post`, `btn-primary` 등의 CSS 클래스를 적용하여 일관된 디자인 시스템을 구현했습니다.

2.  **Favicon 및 이미지 에셋 관리 방안**
    *   **Favicon 변경**: `application.html.erb`의 `<link>` 태그에 연결된 `public/icon.png`, `public/icon.svg` 파일을 교체하여 사이트의 파비콘을 변경하는 방법을 안내했습니다.
    *   **이미지 에셋 추가**: 이미지는 `app/assets/images/` 디렉토리에 위치시키고, View에서는 Rails의 `image_tag` 헬퍼를 사용하여 이미지를 렌더링하는 방법을 안내했습니다.

3.  **결제 버튼 UI 개선**
    *   `home/index.html.erb`의 '결제하기' 버튼에 토스페이먼츠 로고(`Toss_Symbol_Primary.png`)를 `image_tag`를 이용해 추가했습니다.
    *   `home.css`를 수정하여 Flexbox 레이아웃을 적용, 버튼 내 이미지와 텍스트가 정렬되도록 UI를 개선했습니다.

---

## Ruby on Rails 프로젝트 구조

Ruby on Rails는 "Convention over Configuration" (설정보다 관례) 원칙을 따르므로, 폴더와 파일 구조가 매우 중요합니다. 주요 디렉토리와 파일의 역할은 다음과 같습니다.

### 주요 디렉토리

-   **`app/`**: 애플리케이션의 핵심 코드가 위치하는 곳 (MVC 패턴).
    -   `assets/`: CSS, JavaScript, 이미지 등 정적 에셋 파일.
    -   `controllers/`: 사용자의 요청을 받아 Model과 View를 중개하는 컨트롤러.
    -   `models/`: 데이터베이스와 상호작용하고 비즈니스 로직을 담는 모델.
    -   `views/`: 사용자에게 보여줄 HTML 템플릿 (ERB 파일).
    -   `helpers/`: View에서 사용되는 헬퍼 메소드.
    -   `javascript/`: JavaScript 코드.

-   **`bin/`**: `rails`, `rake`, `bundle` 등 애플리케이션 관리를 위한 실행 스크립트.

-   **`config/`**: 애플리케이션의 설정을 관리.
    -   `routes.rb`: URL 라우팅 규칙을 정의.
    -   `database.yml`: 데이터베이스 연결 설정.
    -   `application.rb`: 애플리케이션의 핵심 설정.
    -   `environments/`: 개발, 테스트, 프로덕션 환경별 설정.

-   **`db/`**: 데이터베이스 관련 파일.
    -   `schema.rb`: 현재 데이터베이스 스키마 구조.
    -   `migrate/`: 데이터베이스 스키마 변경을 위한 마이그레이션 파일.
    -   `seeds.rb`: 초기 데이터(seed)를 정의.

-   **`public/`**: 브라우저에 직접 제공되는 정적 파일 (에러 페이지, `robots.txt` 등).

-   **`test/`** (또는 `spec/`): 애플리케이션 테스트 코드.

### 주요 파일

-   **`Gemfile`**: 프로젝트가 의존하는 Ruby 라이브러리(Gem) 목록.
-   **`Gemfile.lock`**: 설치된 Gem의 정확한 버전 정보.
-   **`README.md`**: 프로젝트에 대한 설명 문서.