# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end

    def parse
        emails_array = @emails.split(/[, ]+/).map { |email| email.gsub(" ", ", ") }.uniq
        emails_array
    end
end
