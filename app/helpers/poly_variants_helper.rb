# frozen_string_literal: true
module PolyVariantsHelper
    def action
      if action_name == "advanced_search"
        :post
      else
        :get
      end
    end
  
    def link_to_toggle_search_modes
        link_to("Go to Simple mode", poly_variants_path)
    end
  
    def poly_variant_column_headers
      %i(id first_name last_name email created_at updated_at).freeze
    end
  
    def poly_variant_column_fields
      %i(id first_name last_name email created updated).freeze
    end
  
    def results_limit
      # max number of search results to display
      10
    end
  
    def post_title_length
      # max number of characters in genes titles to display
      14
    end
  
    def post_title_header_labels
      %w(1 2 3).freeze
    end
  
    def poly_variant_genes_and_comments
      %w(genes other_genes comments).freeze
    end
  
    def condition_fields
      %w(fields condition).freeze
    end
  
    def value_fields
      %w(fields value).freeze
    end
  
    def display_distinct_label_and_check_box
      tag.section do
        check_box_tag(:distinct, "1", poly_variant_wants_distinct_results?, class: :cbx) +
        label_tag(:distinct, "Return distinct records")
      end
    end
  
    def user_wants_distinct_results?
      params[:distinct].to_i == 1
    end
  
    def display_query_sql()
      tag.p("SQL:") + tag.code(poly_variants.to_sql)
    end
  
    def display_results_header(count)
      if count > results_limit
        "Your first #{results_limit} results out of #{count} total"
      else
        "Your #{pluralize(count, 'result')}"
      end
    end
  
    def display_sort_column_headers(search)
      poly_variant_column_headers.reduce(String.new) do |string, field|
        string << (tag.th sort_link(search, field, method: action))
      end +
      post_title_header_labels.reduce(String.new) do |str, i|
        str << (tag.th "Post #{i} title")
      end
    end
  
    def display_search_results(objects)
      objects.limit(results_limit).reduce(String.new) do |string, object|
        string << (tag.tr display_search_results_row(object))
      end
    end
  
    def display_search_results_row(object)
      poly_variant_column_fields.reduce(String.new) do |string, field|
        string << (tag.td object.send(field))
      end
      .html_safe +
      display_poly_variant_genes(object.genes)
    end
  
    def display_poly_variant_genes(genes)
      genes.reduce(String.new) do |string, post|
        string << (tag.td truncate(post.title, length: post_title_length))
      end
      .html_safe
    end
  
end
